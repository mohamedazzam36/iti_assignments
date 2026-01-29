import 'package:flutter/material.dart';

import '../../../../../core/resources/app_colors.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    this.backgroundColor = AppColors.deepPurpleColor,
    required this.text,
    this.textColor = AppColors.whiteColor,
    required this.onPressed,
    this.borderColor = AppColors.whiteColor,
  });

  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shadowColor: AppColors.deepPurpleColor,
          elevation: 2.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          backgroundColor: backgroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
