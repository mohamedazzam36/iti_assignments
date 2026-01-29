import 'package:flutter/material.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/password_validator_widget.dart';

class PasswordValidatorsSection extends StatelessWidget {
  const PasswordValidatorsSection({
    super.key,
    required this.isLengthValid,
    required this.isNumberValid,
    required this.isMatchValid,
  });

  final bool isLengthValid, isNumberValid, isMatchValid;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        PasswordValidatorWidget(
          isValid: isLengthValid,
          text: 'At least 8 characters',
        ),
        PasswordValidatorWidget(
          isValid: isNumberValid,
          text: 'Contains a number',
        ),

        PasswordValidatorWidget(
          isValid: isMatchValid,
          text: 'Passwords match',
        ),
      ],
    );
  }
}
