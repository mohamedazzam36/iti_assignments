import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:iti_flutter/core/cubits/app_cubit.dart';
import 'package:iti_flutter/core/network/api_services.dart';
import 'package:iti_flutter/core/network/dio_configs.dart';
import 'package:iti_flutter/features/home/data/repos/home_repo.dart';
import 'package:iti_flutter/features/home/data/repos/home_repo_impl.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerFactory<AppCubit>(() => AppCubit(sl<HomeRepo>()));
  sl.registerLazySingleton<Dio>(() => DioConfigs.getDio());
  sl.registerLazySingleton<ApiServices>(() => ApiServices(sl<Dio>()));
  sl.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(apiServices: sl<ApiServices>()));
}
