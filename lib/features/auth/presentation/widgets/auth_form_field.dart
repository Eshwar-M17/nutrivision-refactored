import 'package:flutter/material.dart';

class AuthFormField extends StatefulWidget {
  const AuthFormField({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.validator
  });
  final TextEditingController controller;
  final String? hintText;
  final Icon? prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  @override
  State<AuthFormField> createState() => _AuthFormFieldState();
}

class _AuthFormFieldState extends State<AuthFormField> {
  bool _isTextObscured = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText ? _isTextObscured : false,
      validator: widget.validator,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        filled: true,

        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isTextObscured = !_isTextObscured;
                  });
                },
                icon: Icon(
                  _isTextObscured
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              )
            : null,

        fillColor: Theme.of(context).colorScheme.onInverseSurface,
        enabled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white10),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white10),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
