import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/core/result/result.dart';
import 'package:nutrivision/core/utils/form_validator.dart';
import 'package:nutrivision/core/utils/snackbar_manager.dart';
import 'package:nutrivision/features/auth/data/models/auth_user.dart';
import 'package:nutrivision/features/auth/presentation/pages/auth_page.dart';
import 'package:nutrivision/features/auth/presentation/viewmodel/auth_notifier.dart';
import 'package:nutrivision/features/auth/presentation/widgets/auth_button.dart';
import 'package:nutrivision/features/auth/presentation/widgets/auth_form_field.dart';

class SignInWidget extends ConsumerStatefulWidget {
  const SignInWidget({super.key});

  @override
  ConsumerState<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends ConsumerState<SignInWidget> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  late final GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),

      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimaryFixed,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white.withAlpha(20)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._buildInputField(
              context,
              title: "EMAIL ADDRESS",
              controller:_emailController,
              prefixIcon: Icon(Icons.alternate_email, color: Colors.white60),
              hintText: "name@company.com",
              validator: (value) => FormValidator.validateEmail(value),
            ),
            SizedBox(height: 20),
            ..._buildInputField(
              context,
              title: "PASSWORD",
              controller: _passwordController,
              hintText: "Min. 8 characters",
              obscureText: true,
              prefixIcon: Icon(Icons.lock_open_outlined, color: Colors.white60),
              validator: (value) => FormValidator.validatePassword(value),
            ),
            SizedBox(height: 30),
            AuthButton(
              title: "Sign In",
              onTap: () async {
                if (!_formKey.currentState!.validate()) {
                  return;
                }

                final result = await ref
                    .read(authProvider.notifier)
                    .signIn(email: email, password: password);
                switch (result) {
                  case Ok<AuthUser>():
                    SnackbarManager.success("Sign In Sucessfull");
                    break;
                  case Error<AuthUser>():
                    SnackbarManager.error(result.message);
                }
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.white10)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or Login With",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white24,
                    ),
                  ),
                ),
                Expanded(child: Divider(color: Colors.white10)),
              ],
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: RedirectButton(
                    title: "Touch ID",
                    icon: Icon(Icons.fingerprint),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: RedirectButton(
                    title: "Face ID",
                    icon: Icon(Icons.face, color: Colors.white60),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildInputField(
    BuildContext context, {
    required String title,
    required TextEditingController controller,
    bool obscureText = false,
    String? hintText,
    Icon? prefixIcon,
    final String? Function(String?)? validator,
  }) {
    return [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Colors.white60,
        ),
      ),
      SizedBox(height: 4),
      AuthFormField(
        controller: controller,
        obscureText: obscureText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        validator: validator,
      ),
    ];
  }
}
