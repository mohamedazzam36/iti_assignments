import 'package:flutter/material.dart';

class PasswordValidatorWidget extends StatelessWidget {
  const PasswordValidatorWidget({super.key, required this.isValid, required this.text});

  final bool isValid;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        isValid
            ? const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 24,
              )
            : const Icon(
                Icons.cancel,
                color: Colors.red,
                size: 24,
              ),
        Text(
          text,
          style: TextStyle(
            color: isValid ? Colors.green : Colors.red,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
