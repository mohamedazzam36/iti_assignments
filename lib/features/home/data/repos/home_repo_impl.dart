import 'package:iti_flutter/features/home/data/models/item_model.dart';
import 'package:iti_flutter/features/home/data/repos/home_repo.dart';
import 'package:iti_flutter/main.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  List<ItemModel> fetchItems() {
    return itemsBox.values.toList();
  }
}
