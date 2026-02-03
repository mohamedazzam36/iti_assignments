import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iti_flutter/core/resources/app_colors.dart';
import 'package:iti_flutter/features/home/data/models/product_model.dart';

class CustomItemWidget extends StatefulWidget {
  const CustomItemWidget({super.key, required this.item});

  final ProductModel item;

  @override
  State<CustomItemWidget> createState() => _CustomItemWidgetState();
}

class _CustomItemWidgetState extends State<CustomItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Card(
              child: Image.network(
                widget.item.thumbnail!,
                height: 220,
              ),
            ),
            // IconButton(
            //   onPressed: () async {
            //     widget.item.isFav = !widget.item.isFav;
            //     await widget.item.save();
            //     setState(() {});
            //   },
            //   icon: widget.item.isFav
            //       ? const Icon(Icons.favorite, color: Colors.red)
            //       : const Icon(
            //           Icons.favorite,
            //           color: Colors.grey,
            //         ),
            // ),
          ],
        ),
        Text(
          widget.item.title,
          maxLines: 2,
          style: const TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        Text(
          '${widget.item.price.toStringAsFixed(2)}\$',
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ],
    );
  }
}
