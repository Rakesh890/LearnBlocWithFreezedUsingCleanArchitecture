import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_state.dart';
part 'wishlist_cubit.freezed.dart';

class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit() : super(const WishlistState.addToWishList(isAdded: false));
  
  void addToWishList({required bool? value}){
    emit(state.copyWith(isAdded: value));
  }
}
