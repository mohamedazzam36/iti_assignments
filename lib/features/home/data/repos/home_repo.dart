import 'package:iti_flutter/features/home/data/models/item_model.dart';

abstract class HomeRepo {
  List<ItemModel> fetchItems();
}
