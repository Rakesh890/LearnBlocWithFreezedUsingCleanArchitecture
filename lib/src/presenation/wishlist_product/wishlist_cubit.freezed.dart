// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishlistState {
  bool? get isAdded => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isAdded) addToWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isAdded)? addToWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isAdded)? addToWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedOrNotFaveourite value) addToWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedOrNotFaveourite value)? addToWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedOrNotFaveourite value)? addToWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call({bool? isAdded});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdded = freezed,
  }) {
    return _then(_value.copyWith(
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddedOrNotFaveouriteImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$AddedOrNotFaveouriteImplCopyWith(_$AddedOrNotFaveouriteImpl value,
          $Res Function(_$AddedOrNotFaveouriteImpl) then) =
      __$$AddedOrNotFaveouriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isAdded});
}

/// @nodoc
class __$$AddedOrNotFaveouriteImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$AddedOrNotFaveouriteImpl>
    implements _$$AddedOrNotFaveouriteImplCopyWith<$Res> {
  __$$AddedOrNotFaveouriteImplCopyWithImpl(_$AddedOrNotFaveouriteImpl _value,
      $Res Function(_$AddedOrNotFaveouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdded = freezed,
  }) {
    return _then(_$AddedOrNotFaveouriteImpl(
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AddedOrNotFaveouriteImpl implements _AddedOrNotFaveourite {
  const _$AddedOrNotFaveouriteImpl({required this.isAdded});

  @override
  final bool? isAdded;

  @override
  String toString() {
    return 'WishlistState.addToWishList(isAdded: $isAdded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedOrNotFaveouriteImpl &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedOrNotFaveouriteImplCopyWith<_$AddedOrNotFaveouriteImpl>
      get copyWith =>
          __$$AddedOrNotFaveouriteImplCopyWithImpl<_$AddedOrNotFaveouriteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isAdded) addToWishList,
  }) {
    return addToWishList(isAdded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isAdded)? addToWishList,
  }) {
    return addToWishList?.call(isAdded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isAdded)? addToWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(isAdded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedOrNotFaveourite value) addToWishList,
  }) {
    return addToWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedOrNotFaveourite value)? addToWishList,
  }) {
    return addToWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedOrNotFaveourite value)? addToWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(this);
    }
    return orElse();
  }
}

abstract class _AddedOrNotFaveourite implements WishlistState {
  const factory _AddedOrNotFaveourite({required final bool? isAdded}) =
      _$AddedOrNotFaveouriteImpl;

  @override
  bool? get isAdded;
  @override
  @JsonKey(ignore: true)
  _$$AddedOrNotFaveouriteImplCopyWith<_$AddedOrNotFaveouriteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
