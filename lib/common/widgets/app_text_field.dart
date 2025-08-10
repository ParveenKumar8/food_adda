import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final VoidCallback? onTap;

  const AppTextField({
    super.key,
    this.label = "",
    this.hint,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.maxLines = 1,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final InputDecorationTheme inputTheme =
        Theme.of(context).inputDecorationTheme;
    final TextStyle? textTheme = Theme.of(context).textTheme.bodyMedium;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        autocorrect: false,
        maxLines: obscureText ? 1 : maxLines,
        validator: validator,
        enabled: enabled,
        onTap: onTap,
        style: textTheme,
        decoration: InputDecoration(
          //labelText: label,
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // Inherit global style but you can override some properties.
          border: inputTheme.border ?? OutlineInputBorder(),
          filled: inputTheme.filled,
          fillColor: inputTheme.fillColor,
        ),
      ),
    );
  }
}
