import 'package:flutter/cupertino.dart';
import 'package:iti_flutter/core/utils/validators.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/custom_auth_text_field_section.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/no_input_password_validators_section.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/password_validators_section.dart';

class PasswordInputConfirmationSection extends StatefulWidget {
  const PasswordInputConfirmationSection({
    super.key,
    required this.currentNode,
    this.onSaved,
  });

  final FocusNode currentNode;
  final void Function(String?)? onSaved;

  @override
  State<PasswordInputConfirmationSection> createState() => _PasswordInputConfirmationSectionState();
}

class _PasswordInputConfirmationSectionState extends State<PasswordInputConfirmationSection> {
  bool obscureText = true;
  bool? isLengthValid, isNumberValid, isMatchValid, isConfimedLengthValid, isConfimedNumberValid;
  late FocusNode currentNode;
  FocusNode nextNode = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    currentNode = widget.currentNode;
    super.initState();
  }

  @override
  void dispose() {
    currentNode.dispose();
    nextNode.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAuthTextFieldSection(
          title: 'Password',
          hintText: 'Enter Your Password',
          isPassword: true,
          obscureText: obscureText,
          focusNode: currentNode,
          onIconPressed: () => setState(() => obscureText = !obscureText),
          onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(nextNode),
          onSaved: widget.onSaved,
          controller: passwordController,
          validator: (value) {
            return validatePassword(value, false);
          },
        ),
        const SizedBox(height: 12),
        CustomAuthTextFieldSection(
          title: 'Confirm Password',
          hintText: 'Confirm Password',
          isPassword: true,
          obscureText: obscureText,
          focusNode: nextNode,
          onIconPressed: () => setState(() => obscureText = !obscureText),
          textInputAction: TextInputAction.done,
          onSaved: widget.onSaved,
          controller: confirmPasswordController,
          validator: (value) {
            return validatePassword(value, true);
          },
        ),
        (isLengthValid != null && isConfimedLengthValid != null)
            ? Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                child: PasswordValidatorsSection(
                  isLengthValid: isLengthValid! && isConfimedLengthValid!,
                  isNumberValid: isNumberValid! && isConfimedNumberValid!,
                  isMatchValid: isMatchValid!,
                ),
              )
            : const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10.0),
                child: NoInputPasswordValidatorsSection(),
              ),
      ],
    );
  }

  String? validatePassword(String? value, bool isConfirmPasswordField) {
    if (value == null || value.isEmpty) {
      return 'Field cannot be empty';
    }
    if (!isConfirmPasswordField) {
      isMatchValid = passwordController.text == confirmPasswordController.text;
      isLengthValid = AppValidators.validatePasswordLength(value);
      isNumberValid = AppValidators.validatePasswordNumber(value);
      setState(() {});
      if (!isMatchValid! || !isLengthValid! || !isNumberValid!) {
        return 'plaese fix the errors below';
      }
    } else {
      isConfimedLengthValid = AppValidators.validatePasswordLength(value);
      isConfimedNumberValid = AppValidators.validatePasswordNumber(value);
      isMatchValid = passwordController.text == confirmPasswordController.text;
      if (!isConfimedLengthValid! || !isConfimedNumberValid! || !isMatchValid!) {
        return 'plaese fix the errors below';
      }
    }

    return null;
  }
}
