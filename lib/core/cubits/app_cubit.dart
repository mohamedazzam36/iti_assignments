import 'package:bloc/bloc.dart';
import 'package:iti_flutter/features/cart/data/models/cart_item_model.dart';
import 'package:iti_flutter/features/cart/data/repos/cart_repo.dart';
import 'package:iti_flutter/features/cart/data/repos/cart_repo_impl.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  final CartRepo cartRepo = CartRepoImpl();

  late List<CartItemModel> cartItemsList;

  void init() {
    cartItemsList = cartRepo.fetchItems();
  }

  Future<void> addToCart(CartItemModel cartItem) async {
    for (var element in cartItemsList) {
      if (element.cartItem.id == cartItem.cartItem.id) {
        element.count += cartItem.count;
        await element.save();
        emit(CartSuccess());
        return;
      }
    }

    await cartRepo.addItem(cartItem);
    cartItemsList = cartRepo.fetchItems();
    emit(CartSuccess());
  }

  removeItemFromCart(CartItemModel cartItem) async {
    await cartItem.delete();
    cartItemsList = cartRepo.fetchItems();

    emit(CartSuccess());
  }
}
