import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_flutter/cubits/app_cubit.dart';

extension Size on BuildContext {
  double get height {
    return MediaQuery.sizeOf(this).height;
  }

  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  void navigate(Widget screen) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void navigateReplace(Widget screen) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void popTimes(int count) {
    int popped = 0;
    Navigator.popUntil(this, (_) => popped++ >= count);
  }

  void pushAbove(String baseRouteName, Widget newScreen) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(
        builder: (context) => newScreen,
      ),
      (route) => route.settings.name == baseRouteName,
    );
  }

  AppCubit get appCubit {
    return BlocProvider.of<AppCubit>(this);
  }
}
