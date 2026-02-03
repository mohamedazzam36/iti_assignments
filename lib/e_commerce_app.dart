import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_flutter/core/di/service_locator.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/core/cubits/app_cubit.dart';
import 'package:iti_flutter/features/home/presentation/views/home_view.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AppCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryColor,
          appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor),
        ),
        home: const HomeView(),
      ),
    );
  }
}
