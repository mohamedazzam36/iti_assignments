part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

final class ProductsSuccess extends AppState {
  final List<ProductModel> products;
  ProductsSuccess(this.products);
}

final class ProductsFailure extends AppState {
  final String errorMessage;
  ProductsFailure(this.errorMessage);
}

final class ProductsLoading extends AppState {}
