import 'package:bloc_with_freezed_example/src/data/data_sources/product_source.dart';
import 'package:bloc_with_freezed_example/src/data/data_sources/remote_source/product_source_impl.dart';
import 'package:bloc_with_freezed_example/src/data/repository/product_repo_impl.dart';
import 'package:bloc_with_freezed_example/src/domain/repository/product_repository.dart';
import 'package:bloc_with_freezed_example/src/domain/usecases/get_product_usecase.dart';
import 'package:bloc_with_freezed_example/src/presenation/home_bloc/home_bloc.dart';
import 'package:bloc_with_freezed_example/src/presenation/wishlist_product/wishlist_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initInjectors() async {
  //Bloc
  getIt.registerLazySingleton<HomeBloc>(() => HomeBloc(productUseCase: getIt()));
  getIt.registerLazySingleton<WishlistCubit>(() => WishlistCubit());

  //Register use case here
  getIt.registerLazySingleton(() => ProductUseCase(productRepository: getIt()));

  //Implementation of repository to impl
  getIt.registerLazySingleton<ProductRepository>(
          () => ProductRepoImpl(productSource: getIt()));

  //Register sources
  getIt.registerLazySingleton<ProductSource>(
          () => ProductSourceImpl(client: getIt()));

  //Dio Client
  getIt.registerLazySingleton(() => Dio());
}
