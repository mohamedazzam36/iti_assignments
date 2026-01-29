import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class CustomAuthTextFieldSection extends StatelessWidget {
  const CustomAuthTextFieldSection({
    super.key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
    this.obscureText = false,
    this.onIconPressed,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.onSaved,
    this.controller,
    this.prefixIcon,
    this.initialValue,
    this.textColor = AppColors.blackColor,
  });

  final String title;
  final String hintText;
  final bool isPassword;
  final bool obscureText;
  final void Function()? onIconPressed;
  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? initialValue;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 8),
        CustomAuthTextField(
          hintText: hintText,
          isPassword: isPassword,
          onIconPressed: onIconPressed,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmitted,
          focusNode: focusNode,
          textInputAction: textInputAction,
          validator: validator,
          onSaved: onSaved,
          controller: controller,
          prefixIcon: prefixIcon,
          initialValue: initialValue,
          textColor: textColor,
        ),
      ],
    );
  }
}
