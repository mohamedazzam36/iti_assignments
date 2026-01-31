import 'package:hive_flutter/hive_flutter.dart';
import 'package:iti_flutter/features/home/data/models/item_model.dart';

part 'cart_item_model.g.dart';

@HiveType(typeId: 1)
class CartItemModel extends HiveObject {
  @HiveField(0)
  final ItemModel cartItem;

  @HiveField(1)
  int count;

  CartItemModel({required this.cartItem, required this.count});

  CartItemModel copyWith({ItemModel? cartItem, int? count}) {
    return CartItemModel(
      cartItem: cartItem ?? this.cartItem,
      count: count ?? this.count,
    );
  }
}
