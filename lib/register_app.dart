import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/features/auth/presentation/views/register_view.dart';

class RegisterApp extends StatelessWidget {
  const RegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor),
      ),
      home: const RegisterView(),
    );
  }
}
