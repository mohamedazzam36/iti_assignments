import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';

class AlreadyHaveAccountSection extends StatelessWidget {
  const AlreadyHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: TextStyle(fontSize: 14, color: AppColors.purpleColor),
        ),
        const SizedBox(width: 2),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Log In',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.deepPurpleColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
