part of 'wishlist_cubit.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState.addToWishList({required bool? isAdded}) = _AddedOrNotFaveourite;
}
