import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/core/utils/validators.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/already_have_account_section.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/custom_auth_text_field_section.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/password_input_confirmation_section.dart';

class RegisterUserInputSection extends StatefulWidget {
  const RegisterUserInputSection({super.key});

  @override
  State<RegisterUserInputSection> createState() => _RegisterUserInputSectionState();
}

class _RegisterUserInputSectionState extends State<RegisterUserInputSection> {
  final FocusNode secondNode = FocusNode(), thirdNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, password, phoneNum;

  @override
  void dispose() {
    secondNode.dispose();
    thirdNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomAuthTextFieldSection(
            title: 'Email Address',
            hintText: 'Enter Your Email',
            validator: AppValidators.validateEmail,
            textColor: AppColors.purpleColor,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(secondNode),
            onSaved: (value) => email = value,
          ),
          const SizedBox(height: 22),
          CustomAuthTextFieldSection(
            title: 'Phone Number',
            hintText: 'Enter Your Phone Number',
            textColor: AppColors.purpleColor,
            focusNode: secondNode,
            validator: AppValidators.validatePhoneNumber,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(thirdNode),
            onSaved: (value) => phoneNum = value,
          ),
          const SizedBox(height: 22),
          PasswordInputConfirmationSection(
            currentNode: thirdNode,
            onSaved: (value) => password = value,
          ),
          const SizedBox(height: 32),
          CustomAuthButton(
            text: 'Sign Up',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
            },
          ),
          const SizedBox(height: 18),
          const AlreadyHaveAccountSection(),
        ],
      ),
    );
  }
}
