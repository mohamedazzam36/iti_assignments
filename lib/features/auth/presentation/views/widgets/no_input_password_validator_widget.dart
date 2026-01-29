import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';

class NoInputPasswordValidatorWidget extends StatelessWidget {
  const NoInputPasswordValidatorWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        const Icon(
          Icons.circle_outlined,
          color: AppColors.grayColor,
          size: 24,
        ),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.grayColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
