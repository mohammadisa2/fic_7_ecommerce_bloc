// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fecthMyCart,
    required TResult Function() countMyCart,
    required TResult Function(CartRequestModel requestModel) deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fecthMyCart,
    TResult? Function()? countMyCart,
    TResult? Function(CartRequestModel requestModel)? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fecthMyCart,
    TResult Function()? countMyCart,
    TResult Function(CartRequestModel requestModel)? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FecthMyCart value) fecthMyCart,
    required TResult Function(_CountMyCart value) countMyCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FecthMyCart value)? fecthMyCart,
    TResult? Function(_CountMyCart value)? countMyCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthMyCart value)? fecthMyCart,
    TResult Function(_CountMyCart value)? countMyCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CartEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fecthMyCart,
    required TResult Function() countMyCart,
    required TResult Function(CartRequestModel requestModel) deleteCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fecthMyCart,
    TResult? Function()? countMyCart,
    TResult? Function(CartRequestModel requestModel)? deleteCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fecthMyCart,
    TResult Function()? countMyCart,
    TResult Function(CartRequestModel requestModel)? deleteCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FecthMyCart value) fecthMyCart,
    required TResult Function(_CountMyCart value) countMyCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FecthMyCart value)? fecthMyCart,
    TResult? Function(_CountMyCart value)? countMyCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthMyCart value)? fecthMyCart,
    TResult Function(_CountMyCart value)? countMyCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FecthMyCartImplCopyWith<$Res> {
  factory _$$FecthMyCartImplCopyWith(
          _$FecthMyCartImpl value, $Res Function(_$FecthMyCartImpl) then) =
      __$$FecthMyCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FecthMyCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$FecthMyCartImpl>
    implements _$$FecthMyCartImplCopyWith<$Res> {
  __$$FecthMyCartImplCopyWithImpl(
      _$FecthMyCartImpl _value, $Res Function(_$FecthMyCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FecthMyCartImpl implements _FecthMyCart {
  const _$FecthMyCartImpl();

  @override
  String toString() {
    return 'CartEvent.fecthMyCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FecthMyCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fecthMyCart,
    required TResult Function() countMyCart,
    required TResult Function(CartRequestModel requestModel) deleteCart,
  }) {
    return fecthMyCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fecthMyCart,
    TResult? Function()? countMyCart,
    TResult? Function(CartRequestModel requestModel)? deleteCart,
  }) {
    return fecthMyCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fecthMyCart,
    TResult Function()? countMyCart,
    TResult Function(CartRequestModel requestModel)? deleteCart,
    required TResult orElse(),
  }) {
    if (fecthMyCart != null) {
      return fecthMyCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FecthMyCart value) fecthMyCart,
    required TResult Function(_CountMyCart value) countMyCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return fecthMyCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FecthMyCart value)? fecthMyCart,
    TResult? Function(_CountMyCart value)? countMyCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return fecthMyCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthMyCart value)? fecthMyCart,
    TResult Function(_CountMyCart value)? countMyCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (fecthMyCart != null) {
      return fecthMyCart(this);
    }
    return orElse();
  }
}

abstract class _FecthMyCart implements CartEvent {
  const factory _FecthMyCart() = _$FecthMyCartImpl;
}

/// @nodoc
abstract class _$$CountMyCartImplCopyWith<$Res> {
  factory _$$CountMyCartImplCopyWith(
          _$CountMyCartImpl value, $Res Function(_$CountMyCartImpl) then) =
      __$$CountMyCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountMyCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CountMyCartImpl>
    implements _$$CountMyCartImplCopyWith<$Res> {
  __$$CountMyCartImplCopyWithImpl(
      _$CountMyCartImpl _value, $Res Function(_$CountMyCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountMyCartImpl implements _CountMyCart {
  const _$CountMyCartImpl();

  @override
  String toString() {
    return 'CartEvent.countMyCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountMyCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fecthMyCart,
    required TResult Function() countMyCart,
    required TResult Function(CartRequestModel requestModel) deleteCart,
  }) {
    return countMyCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fecthMyCart,
    TResult? Function()? countMyCart,
    TResult? Function(CartRequestModel requestModel)? deleteCart,
  }) {
    return countMyCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fecthMyCart,
    TResult Function()? countMyCart,
    TResult Function(CartRequestModel requestModel)? deleteCart,
    required TResult orElse(),
  }) {
    if (countMyCart != null) {
      return countMyCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FecthMyCart value) fecthMyCart,
    required TResult Function(_CountMyCart value) countMyCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return countMyCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FecthMyCart value)? fecthMyCart,
    TResult? Function(_CountMyCart value)? countMyCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return countMyCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthMyCart value)? fecthMyCart,
    TResult Function(_CountMyCart value)? countMyCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (countMyCart != null) {
      return countMyCart(this);
    }
    return orElse();
  }
}

abstract class _CountMyCart implements CartEvent {
  const factory _CountMyCart() = _$CountMyCartImpl;
}

/// @nodoc
abstract class _$$DeleteCartImplCopyWith<$Res> {
  factory _$$DeleteCartImplCopyWith(
          _$DeleteCartImpl value, $Res Function(_$DeleteCartImpl) then) =
      __$$DeleteCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartRequestModel requestModel});
}

/// @nodoc
class __$$DeleteCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartImpl>
    implements _$$DeleteCartImplCopyWith<$Res> {
  __$$DeleteCartImplCopyWithImpl(
      _$DeleteCartImpl _value, $Res Function(_$DeleteCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModel = null,
  }) {
    return _then(_$DeleteCartImpl(
      null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as CartRequestModel,
    ));
  }
}

/// @nodoc

class _$DeleteCartImpl implements _DeleteCart {
  const _$DeleteCartImpl(this.requestModel);

  @override
  final CartRequestModel requestModel;

  @override
  String toString() {
    return 'CartEvent.deleteCart(requestModel: $requestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartImpl &&
            (identical(other.requestModel, requestModel) ||
                other.requestModel == requestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartImplCopyWith<_$DeleteCartImpl> get copyWith =>
      __$$DeleteCartImplCopyWithImpl<_$DeleteCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fecthMyCart,
    required TResult Function() countMyCart,
    required TResult Function(CartRequestModel requestModel) deleteCart,
  }) {
    return deleteCart(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fecthMyCart,
    TResult? Function()? countMyCart,
    TResult? Function(CartRequestModel requestModel)? deleteCart,
  }) {
    return deleteCart?.call(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fecthMyCart,
    TResult Function()? countMyCart,
    TResult Function(CartRequestModel requestModel)? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(requestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FecthMyCart value) fecthMyCart,
    required TResult Function(_CountMyCart value) countMyCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return deleteCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FecthMyCart value)? fecthMyCart,
    TResult? Function(_CountMyCart value)? countMyCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return deleteCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthMyCart value)? fecthMyCart,
    TResult Function(_CountMyCart value)? countMyCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteCart implements CartEvent {
  const factory _DeleteCart(final CartRequestModel requestModel) =
      _$DeleteCartImpl;

  CartRequestModel get requestModel;
  @JsonKey(ignore: true)
  _$$DeleteCartImplCopyWith<_$DeleteCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartResponseModel response});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartResponseModel,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.response);

  @override
  final CartResponseModel response;

  @override
  String toString() {
    return 'CartState.loaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded(final CartResponseModel response) = _$LoadedImpl;

  CartResponseModel get response;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'CartState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteCartResponseModel data});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeletedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeleteCartResponseModel,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.data);

  @override
  final DeleteCartResponseModel data;

  @override
  String toString() {
    return 'CartState.deleted(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) {
    return deleted(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) {
    return deleted?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CartState {
  const factory _Deleted(final DeleteCartResponseModel data) = _$DeletedImpl;

  DeleteCartResponseModel get data;
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDeleteImplCopyWith<$Res> {
  factory _$$ErrorDeleteImplCopyWith(
          _$ErrorDeleteImpl value, $Res Function(_$ErrorDeleteImpl) then) =
      __$$ErrorDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorDeleteImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ErrorDeleteImpl>
    implements _$$ErrorDeleteImplCopyWith<$Res> {
  __$$ErrorDeleteImplCopyWithImpl(
      _$ErrorDeleteImpl _value, $Res Function(_$ErrorDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorDeleteImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorDeleteImpl implements _ErrorDelete {
  const _$ErrorDeleteImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.errorDelete(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDeleteImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDeleteImplCopyWith<_$ErrorDeleteImpl> get copyWith =>
      __$$ErrorDeleteImplCopyWithImpl<_$ErrorDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) {
    return errorDelete(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) {
    return errorDelete?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) {
    if (errorDelete != null) {
      return errorDelete(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) {
    return errorDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) {
    return errorDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (errorDelete != null) {
      return errorDelete(this);
    }
    return orElse();
  }
}

abstract class _ErrorDelete implements CartState {
  const factory _ErrorDelete(final String message) = _$ErrorDeleteImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorDeleteImplCopyWith<_$ErrorDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountImplCopyWith<$Res> {
  factory _$$CountImplCopyWith(
          _$CountImpl value, $Res Function(_$CountImpl) then) =
      __$$CountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CountMyCartResponseModel data});
}

/// @nodoc
class __$$CountImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CountImpl>
    implements _$$CountImplCopyWith<$Res> {
  __$$CountImplCopyWithImpl(
      _$CountImpl _value, $Res Function(_$CountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CountImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CountMyCartResponseModel,
    ));
  }
}

/// @nodoc

class _$CountImpl implements _Count {
  const _$CountImpl(this.data);

  @override
  final CountMyCartResponseModel data;

  @override
  String toString() {
    return 'CartState.count(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      __$$CountImplCopyWithImpl<_$CountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponseModel response) loaded,
    required TResult Function() error,
    required TResult Function(DeleteCartResponseModel data) deleted,
    required TResult Function(String message) errorDelete,
    required TResult Function(CountMyCartResponseModel data) count,
  }) {
    return count(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponseModel response)? loaded,
    TResult? Function()? error,
    TResult? Function(DeleteCartResponseModel data)? deleted,
    TResult? Function(String message)? errorDelete,
    TResult? Function(CountMyCartResponseModel data)? count,
  }) {
    return count?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponseModel response)? loaded,
    TResult Function()? error,
    TResult Function(DeleteCartResponseModel data)? deleted,
    TResult Function(String message)? errorDelete,
    TResult Function(CountMyCartResponseModel data)? count,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_ErrorDelete value) errorDelete,
    required TResult Function(_Count value) count,
  }) {
    return count(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_ErrorDelete value)? errorDelete,
    TResult? Function(_Count value)? count,
  }) {
    return count?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_ErrorDelete value)? errorDelete,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count(this);
    }
    return orElse();
  }
}

abstract class _Count implements CartState {
  const factory _Count(final CountMyCartResponseModel data) = _$CountImpl;

  CountMyCartResponseModel get data;
  @JsonKey(ignore: true)
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
