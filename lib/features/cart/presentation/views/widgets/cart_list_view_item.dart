// import 'package:flutter/material.dart';
// import 'package:iti_flutter/core/extensions/context_extension.dart';
// import 'package:iti_flutter/core/resources/app_colors.dart';
// import 'package:iti_flutter/features/cart/data/models/cart_item_model.dart';

// class CartListViewItem extends StatelessWidget {
//   const CartListViewItem({super.key, required this.cartItem});

//   final CartItemModel cartItem;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Image.asset(cartItem.cartItem.imagePath, width: 100),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         spacing: 4,
//         children: [
//           Text(
//             cartItem.cartItem.title,
//             style: const TextStyle(
//               color: AppColors.blackColor,
//               fontWeight: FontWeight.bold,
//               fontSize: 28,
//             ),
//           ),
//           Text(
//             '${cartItem.cartItem.price.toStringAsFixed(2)}\$',
//             style: const TextStyle(
//               color: Colors.blueGrey,
//               fontWeight: FontWeight.bold,
//               fontSize: 26,
//             ),
//           ),
//           Row(
//             children: [
//               IconButton(
//                 onPressed: () => context.appCubit.addToCart(cartItem.copyWith(count: 1)),
//                 icon: const Icon(Icons.add_circle_outline_sharp),
//               ),
//               Text(
//                 cartItem.count.toString(),
//                 style: const TextStyle(
//                   color: Colors.grey,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 26,
//                 ),
//               ),
//               IconButton(
//                 onPressed: cartItem.count == 1
//                     ? null
//                     : () => context.appCubit.addToCart(cartItem.copyWith(count: -1)),
//                 icon: const Icon(Icons.remove_circle_outline_outlined),
//               ),
//             ],
//           ),
//         ],
//       ),
//       trailing: IconButton(
//         onPressed: () => context.appCubit.removeItemFromCart(cartItem),
//         icon: const Icon(
//           Icons.delete,
//           color: Colors.red,
//           size: 36,
//         ),
//       ),
//     );
//   }
// }
