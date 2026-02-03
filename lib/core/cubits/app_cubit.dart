import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:iti_flutter/core/network/api_failures.dart';
import 'package:iti_flutter/features/cart/data/models/cart_item_model.dart';
import 'package:iti_flutter/features/cart/data/repos/cart_repo.dart';
import 'package:iti_flutter/features/cart/data/repos/cart_repo_impl.dart';
import 'package:iti_flutter/features/home/data/models/product_model.dart';
import 'package:iti_flutter/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this.homeRepo) : super(AppInitial());
  final HomeRepo homeRepo;

  // void init() {
  //   cartItemsList = cartRepo.fetchItems();
  // }

  // Future<void> addToCart(CartItemModel cartItem) async {
  //   for (var element in cartItemsList) {
  //     if (element.cartItem.id == cartItem.cartItem.id) {
  //       element.count += cartItem.count;
  //       await element.save();
  //       emit(CartSuccess());
  //       return;
  //     }
  //   }

  //   await cartRepo.addItem(cartItem);
  //   cartItemsList = cartRepo.fetchItems();
  //   emit(CartSuccess());
  // }

  // removeItemFromCart(CartItemModel cartItem) async {
  //   await cartItem.delete();
  //   cartItemsList = cartRepo.fetchItems();

  //   emit(CartSuccess());
  // }

  Future<void> fetchAllProducts() async {
    try {
      emit(ProductsLoading());

      List<ProductModel> products = await homeRepo.fetchItems();
      emit(ProductsSuccess(products));
    } on DioException catch (e) {
      emit(ProductsFailure(ApiFailures.fromDioException(e).errMessage));
    } catch (e) {
      emit(ProductsFailure(e.toString()));
    }
  }
}
