import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';

class ConditionsAndAgreementWidget extends StatelessWidget {
  const ConditionsAndAgreementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'By signing up, you agree to our ',
        style: TextStyle(color: AppColors.grayColor, fontSize: 14),
        children: [
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
