import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_flutter/core/extensions/context_extension.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/cubits/app_cubit.dart';
import 'package:iti_flutter/features/cart/presentation/views/widgets/cart_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: context.appCubit.cartItemsList.isEmpty
                  ? const Center(
                      child: Text(
                        ' No items',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    )
                  : CartListView(cartItems: context.appCubit.cartItemsList),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.purpleColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'Total money: ${context.appCubit.cartItemsList.fold<double>(
                  0.0,
                  (previousValue, element) => previousValue += element.count * element.cartItem.price,
                ).toStringAsFixed(2)}\$',
                style: const TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
