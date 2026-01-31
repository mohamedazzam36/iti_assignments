import 'package:flutter/material.dart';
import 'package:iti_flutter/core/extensions/context_extension.dart';
import 'package:iti_flutter/features/home/data/repos/home_repo_impl.dart';
import 'package:iti_flutter/features/home/presentation/views/widgets/items_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.appCubit.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ItemsGridView(items: HomeRepoImpl().fetchItems());
  }
}
