import 'package:iti_flutter/core/resources/app_images.dart';
import 'package:iti_flutter/features/home/data/models/item_model.dart';

abstract class UiConstants {
  static List<ItemModel> itemsList = [
    ItemModel(
      id: 0,
      title: 'Biker Jacket',
      imagePath: Assets.imagesItem1,
      price: 120.00,
    ),
    ItemModel(
      id: 1,
      title: 'Classic Hoodie',
      imagePath: Assets.imagesItem2,
      price: 45.50,
    ),
    ItemModel(
      id: 2,
      title: 'Casual Jacket',
      imagePath: Assets.imagesItem3,
      price: 89.99,
    ),
    ItemModel(
      id: 3,
      title: 'Street Hoodie',
      imagePath: Assets.imagesItem4,
      price: 55.00,
    ),
  ];
}
