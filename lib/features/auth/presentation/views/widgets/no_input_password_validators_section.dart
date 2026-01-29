import 'package:flutter/material.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/no_input_password_validator_widget.dart';

class NoInputPasswordValidatorsSection extends StatelessWidget {
  const NoInputPasswordValidatorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 8,
      children: [
        NoInputPasswordValidatorWidget(
          text: 'At least 8 characters',
        ),
        NoInputPasswordValidatorWidget(
          text: 'Contains a number',
        ),

        NoInputPasswordValidatorWidget(
          text: 'Passwords match',
        ),
      ],
    );
  }
}
