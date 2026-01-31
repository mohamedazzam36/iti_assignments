import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/features/cart/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),

      body: const CartViewBody(),
    );
  }
}
