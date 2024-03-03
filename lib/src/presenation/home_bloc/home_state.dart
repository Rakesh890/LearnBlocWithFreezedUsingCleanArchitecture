part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {

  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = _HProductLoading;

  const factory HomeState.success({
    required List<ProductModel> productList
  }) = _HProductSuccess;

  const factory HomeState.failure({required String error}) = _HProductError;


}
