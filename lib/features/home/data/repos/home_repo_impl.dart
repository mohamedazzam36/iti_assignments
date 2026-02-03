import 'package:iti_flutter/core/network/api_services.dart';
import 'package:iti_flutter/features/home/data/models/product_model.dart';
import 'package:iti_flutter/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});

  @override
  Future<List<ProductModel>> fetchItems() async {
    return await apiServices.fetchAllProducts();
  }
}
