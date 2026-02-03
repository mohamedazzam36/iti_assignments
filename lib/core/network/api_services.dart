import 'package:dio/dio.dart';
import 'package:iti_flutter/core/network/api_constants.dart';
import 'package:iti_flutter/features/home/data/models/product_model.dart';

class ApiServices {
  final Dio _dio;
  ApiServices(this._dio);
  Future<List<ProductModel>> fetchAllProducts() async {
    final data = (await _dio.get(ApiConstants.allProductsEndPoint)).data['products'] as List;
    return data
        .map((e) => ProductModel(title: e['title'], price: e['price'], thumbnail: e['thumbnail']))
        .toList();
  }
}
