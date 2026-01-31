import 'package:iti_flutter/features/cart/data/models/cart_item_model.dart';

abstract class CartRepo {
  List<CartItemModel> fetchItems();
  Future<void> addItem(CartItemModel cartItem);
}
