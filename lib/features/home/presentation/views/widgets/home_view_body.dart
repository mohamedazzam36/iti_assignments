import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_flutter/core/cubits/app_cubit.dart';
import 'package:iti_flutter/core/extensions/context_extension.dart';
import 'package:iti_flutter/features/home/presentation/views/widgets/items_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.appCubit.fetchAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        switch (state) {
          case ProductsLoading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ProductsFailure():
            return Center(
              child: Text(state.errorMessage),
            );
          case ProductsSuccess():
            // log('products length: ${state.products.length}');
            return ItemsGridView(items: state.products);
          case AppInitial():
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
