import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// تأكد أن المسار ده صحيح عندك في المشروع أو عدله حسب مكان الملف
import 'package:iti_flutter/core/utils/form_field_helper.dart' show FormFieldHelper;

class CustomPopUpFormField extends StatelessWidget {
  const CustomPopUpFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 20,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      validator: (value) {
        if (value == null || value.isEmpty || (int.tryParse(value) ?? 0) < 1) {
          return 'The minimum number is 1';
        }
        return null;
      },
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w200,
          color: Colors.red,
        ),
        hintText: 'Enter the number',
        hintStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white.withAlpha(150),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        enabledBorder: FormFieldHelper.buildBorder(),
        focusedBorder: FormFieldHelper.buildBorder(),
        errorBorder: FormFieldHelper.buildErrorBorder(),
        focusedErrorBorder: FormFieldHelper.buildErrorBorder(),
      ),
    );
  }
}
