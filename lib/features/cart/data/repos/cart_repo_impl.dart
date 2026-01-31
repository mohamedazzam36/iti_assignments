import 'package:iti_flutter/features/cart/data/models/cart_item_model.dart';
import 'package:iti_flutter/features/cart/data/repos/cart_repo.dart';
import 'package:iti_flutter/main.dart';

class CartRepoImpl implements CartRepo {
  @override
  Future<void> addItem(CartItemModel cartItem) async {
    await cardItemsBox.add(cartItem);
  }

  @override
  List<CartItemModel> fetchItems() {
    return cardItemsBox.values.toList();
  }
}
