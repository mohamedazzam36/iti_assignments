import 'package:iti_flutter/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  Future<List<ProductModel>> fetchItems();
}
