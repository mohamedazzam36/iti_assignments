import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';

class RegisterHeaderSection extends StatelessWidget {
  const RegisterHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Join the community',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Enter your details to get started',
          style: TextStyle(
            fontSize: 18,
            color: AppColors.purpleColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
