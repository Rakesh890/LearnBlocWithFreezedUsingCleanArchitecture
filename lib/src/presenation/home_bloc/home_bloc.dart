// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../data/models/product_models.dart';
// import '../../domain/usecases/get_product_usecase.dart';
//
// part 'home_event.dart';
// part 'home_state.dart';
// part 'home_bloc.freezed.dart';
//
// class HomeBloc extends Bloc<HomeEvent, HomeState>
// {
//   final ProductUseCase productUseCase;
//
//   HomeBloc({required this.productUseCase}) :
//         super(const HomeState.initial()) {
//     on<FetchProductEvent>(_fetchProducts);
//   }
//
//
//
//
//   FutureOr<void> _fetchProducts(FetchProductEvent event, Emitter<HomeState> emit) async {
//     emit(const HomeState.loading());
//     final response = await productUseCase.call();
//     response.fold((l) {
//       debugPrint("Enter there");
//       emit(HomeState.success(productList: l));
//     } , (r) => emit(HomeState.failure(error: "Something went wrong $r")));
//   }
// }
//
//


import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/product_models.dart';
import '../../domain/usecases/get_product_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>
{
  final ProductUseCase productUseCase;

  HomeBloc({required this.productUseCase}) :
        super(const HomeState.initial()) {
    on<FetchProductEvent>(_fetchProducts);
  }

  FutureOr<void> _fetchProducts(FetchProductEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    final response = await productUseCase.call();
    response.fold((l) {
      debugPrint("Enter there");
      emit(HomeState.success(productList: l));
    } , (r) => emit(HomeState.failure(error: "Something went wrong $r")));
  }
}


