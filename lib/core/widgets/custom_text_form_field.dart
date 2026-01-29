import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.obscureText = false,
    this.onIconPressed,
    this.focusNode,
    this.textInputAction,
    this.onFieldSubmitted,
    this.validator,
    this.onSaved,
    this.controller,
    this.prefixIcon,
    this.initialValue,
    this.textColor = AppColors.blackColor,
  });

  final String hintText;
  final bool isPassword;
  final bool obscureText;
  final void Function()? onIconPressed;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? initialValue;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      initialValue: initialValue,
      controller: controller,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText,
      focusNode: focusNode,
      textInputAction: textInputAction,
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Field can\'t be empty!';
            } else {
              return null;
            }
          },
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        hintText: hintText,
        contentPadding: const EdgeInsetsDirectional.only(
          start: 16,
          top: 18,
          bottom: 18,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: isPassword
            ? Padding(
                padding: const EdgeInsetsDirectional.only(end: 6),
                child: FittedBox(
                  child: IconButton(
                    onPressed: onIconPressed,
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.deepPurpleColor,
                    ),
                  ),
                ),
              )
            : null,
        hintStyle: const TextStyle(
          color: AppColors.lightPurpleColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: _buildBorder(AppColors.lightPurpleColor),
        focusedBorder: _buildBorder(AppColors.deepPurpleColor),
        errorBorder: _buildBorder(Colors.red),
        focusedErrorBorder: _buildBorder(Colors.red),
      ),
    );
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color),
    );
  }
}
