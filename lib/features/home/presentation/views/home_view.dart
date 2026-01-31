import 'package:flutter/material.dart';
import 'package:iti_flutter/core/extensions/context_extension.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/features/cart/presentation/views/cart_view.dart';
import 'package:iti_flutter/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart),
        onPressed: () => context.navigate(const CartView()),
      ),
      body: const HomeViewBody(),
    );
  }
}
