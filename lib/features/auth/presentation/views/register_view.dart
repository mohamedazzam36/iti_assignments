import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          'Create Account',
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.blackColor),
          onPressed: () {},
        ),
      ),
      body: const RegisterViewBody(),
    );
  }
}
