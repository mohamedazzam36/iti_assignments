import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iti_flutter/e_commerce_app.dart';
import 'package:iti_flutter/core/db/db_constants.dart';
import 'package:iti_flutter/features/cart/data/models/cart_item_model.dart';
import 'package:iti_flutter/features/home/data/models/item_model.dart';

late Box<ItemModel> itemsBox;
late Box<CartItemModel> cardItemsBox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(ItemModelAdapter());
  Hive.registerAdapter(CartItemModelAdapter());

  await initDatabase();

  runApp(const ECommerceApp());
}

Future<void> initDatabase() async {
  itemsBox = await Hive.openBox(DBConstants.itemsBox);
  cardItemsBox = await Hive.openBox(DBConstants.cartItemsBox);
}
