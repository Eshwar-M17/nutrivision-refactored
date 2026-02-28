import 'package:flutter/material.dart';
import 'package:nutrivision/features/auth/presentation/widgets/animated_tab_slider.dart';
import 'package:nutrivision/features/auth/presentation/widgets/sign_in_widget.dart';
import 'package:nutrivision/features/auth/presentation/widgets/sign_up_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildShieldLogo(context),
                SizedBox(height: 20),
                AppLogo(),

                SizedBox(height: 30),

                AuthAnimatedTabs(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShieldLogo(BuildContext context) {
    return Container(
      width: 64,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      child: Icon(
        Icons.shield_outlined,
        color: Theme.of(context).colorScheme.primary,
        size: 36,
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "NutriVision",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: ".",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}

class RedirectButton extends StatelessWidget {
  const RedirectButton({required this.title, required this.icon, super.key});

  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white10,
        border: BoxBorder.all(color: Colors.white10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 4),
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class AuthAnimatedTabs extends StatefulWidget {
  const AuthAnimatedTabs({super.key});

  @override
  State<AuthAnimatedTabs> createState() => _AuthAnimatedTabsState();
}

class _AuthAnimatedTabsState extends State<AuthAnimatedTabs> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    ); // 10% of the width becomes a gap/peek);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Keep column compact
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AnimatedTabSlider(
            onTabChange: (tab) {
              _pageController.animateToPage(
                tab,
                duration: Durations.medium2,
                curve: Curves.easeInOut,
              );
            },
          ),
        ),
        SizedBox(height: 30),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 520),
          child: PageView(
            controller: _pageController,
            children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(alignment: Alignment.topCenter, child: SignInWidget()),
            ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(alignment: Alignment.topCenter, child: SignUpWidget()),
    ),
            ],
          ),
        ),
      ],
    );
  }
}
