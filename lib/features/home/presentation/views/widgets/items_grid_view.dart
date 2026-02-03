import 'package:flutter/material.dart';
import 'package:iti_flutter/features/home/data/models/product_model.dart';
import 'package:iti_flutter/features/home/presentation/views/widgets/custom_item_widget.dart';

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({super.key, required this.items});

  final List<ProductModel> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
      ),
      itemBuilder: (context, index) => GestureDetector(
        // onTap: () => showGeneralDialog(
        //   context: context,
        //   barrierDismissible: true,
        //   barrierLabel: '',
        //   pageBuilder: (context, animation, secondaryAnimation) => Center(
        //     child: CustomPopUp(
        //       title: 'Enter the quantity:',
        //       onAdd: (inputNum) => context.appCubit.addToCart(
        //         CartItemModel(cartItem: items[index], count: inputNum),
        //       ),
        //     ),
        //   ),
        // ),
        child: CustomItemWidget(item: items[index]),
      ),
    );
  }
}
