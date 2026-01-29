import 'package:flutter/material.dart';

extension ContextHelper on BuildContext {
  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  double get height {
    return MediaQuery.sizeOf(this).height;
  }
}
