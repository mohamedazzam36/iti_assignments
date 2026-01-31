import 'package:flutter/material.dart';
import 'package:iti_flutter/features/cart/data/models/cart_item_model.dart';
import 'package:iti_flutter/features/cart/presentation/views/widgets/cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key, required this.cartItems});

  final List<CartItemModel> cartItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) => CartListViewItem(cartItem: cartItems[index]),
    );
  }
}
