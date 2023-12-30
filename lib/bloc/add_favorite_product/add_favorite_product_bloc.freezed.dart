// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_favorite_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddFavoriteProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddFavoriteProductRequestModel request) add,
    required TResult Function(AddFavoriteProductRequestModel request) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddFavoriteProductRequestModel request)? add,
    TResult? Function(AddFavoriteProductRequestModel request)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddFavoriteProductRequestModel request)? add,
    TResult Function(AddFavoriteProductRequestModel request)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavoriteProductEventCopyWith<$Res> {
  factory $AddFavoriteProductEventCopyWith(AddFavoriteProductEvent value,
          $Res Function(AddFavoriteProductEvent) then) =
      _$AddFavoriteProductEventCopyWithImpl<$Res, AddFavoriteProductEvent>;
}

/// @nodoc
class _$AddFavoriteProductEventCopyWithImpl<$Res,
        $Val extends AddFavoriteProductEvent>
    implements $AddFavoriteProductEventCopyWith<$Res> {
  _$AddFavoriteProductEventCopyWithImpl(this._value, this._then);

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
    extends _$AddFavoriteProductEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AddFavoriteProductEvent.started()';
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
    required TResult Function(AddFavoriteProductRequestModel request) add,
    required TResult Function(AddFavoriteProductRequestModel request) delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddFavoriteProductRequestModel request)? add,
    TResult? Function(AddFavoriteProductRequestModel request)? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddFavoriteProductRequestModel request)? add,
    TResult Function(AddFavoriteProductRequestModel request)? delete,
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
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddFavoriteProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddFavoriteProductRequestModel request});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$AddFavoriteProductEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AddImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddFavoriteProductRequestModel,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.request);

  @override
  final AddFavoriteProductRequestModel request;

  @override
  String toString() {
    return 'AddFavoriteProductEvent.add(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddFavoriteProductRequestModel request) add,
    required TResult Function(AddFavoriteProductRequestModel request) delete,
  }) {
    return add(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddFavoriteProductRequestModel request)? add,
    TResult? Function(AddFavoriteProductRequestModel request)? delete,
  }) {
    return add?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddFavoriteProductRequestModel request)? add,
    TResult Function(AddFavoriteProductRequestModel request)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AddFavoriteProductEvent {
  const factory _Add(final AddFavoriteProductRequestModel request) = _$AddImpl;

  AddFavoriteProductRequestModel get request;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddFavoriteProductRequestModel request});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$AddFavoriteProductEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$DeleteImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddFavoriteProductRequestModel,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.request);

  @override
  final AddFavoriteProductRequestModel request;

  @override
  String toString() {
    return 'AddFavoriteProductEvent.delete(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddFavoriteProductRequestModel request) add,
    required TResult Function(AddFavoriteProductRequestModel request) delete,
  }) {
    return delete(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddFavoriteProductRequestModel request)? add,
    TResult? Function(AddFavoriteProductRequestModel request)? delete,
  }) {
    return delete?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddFavoriteProductRequestModel request)? add,
    TResult Function(AddFavoriteProductRequestModel request)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AddFavoriteProductEvent {
  const factory _Delete(final AddFavoriteProductRequestModel request) =
      _$DeleteImpl;

  AddFavoriteProductRequestModel get request;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddFavoriteProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AddFavoriteProductResponseModel data) loaded,
    required TResult Function(DeleteFavoriteProductResponseModel data) deleted,
    required TResult Function() error,
    required TResult Function(String message) errorDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddFavoriteProductResponseModel data)? loaded,
    TResult? Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult? Function()? error,
    TResult? Function(String message)? errorDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddFavoriteProductResponseModel data)? loaded,
    TResult Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult Function()? error,
    TResult Function(String message)? errorDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorDelete value) errorDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorDelete value)? errorDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorDelete value)? errorDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavoriteProductStateCopyWith<$Res> {
  factory $AddFavoriteProductStateCopyWith(AddFavoriteProductState value,
          $Res Function(AddFavoriteProductState) then) =
      _$AddFavoriteProductStateCopyWithImpl<$Res, AddFavoriteProductState>;
}

/// @nodoc
class _$AddFavoriteProductStateCopyWithImpl<$Res,
        $Val extends AddFavoriteProductState>
    implements $AddFavoriteProductStateCopyWith<$Res> {
  _$AddFavoriteProductStateCopyWithImpl(this._value, this._then);

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
    extends _$AddFavoriteProductStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AddFavoriteProductState.initial()';
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
    required TResult Function(AddFavoriteProductResponseModel data) loaded,
    required TResult Function(DeleteFavoriteProductResponseModel data) deleted,
    required TResult Function() error,
    required TResult Function(String message) errorDelete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddFavoriteProductResponseModel data)? loaded,
    TResult? Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult? Function()? error,
    TResult? Function(String message)? errorDelete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddFavoriteProductResponseModel data)? loaded,
    TResult Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult Function()? error,
    TResult Function(String message)? errorDelete,
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
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorDelete value) errorDelete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorDelete value)? errorDelete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorDelete value)? errorDelete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddFavoriteProductState {
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
    extends _$AddFavoriteProductStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AddFavoriteProductState.loading()';
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
    required TResult Function(AddFavoriteProductResponseModel data) loaded,
    required TResult Function(DeleteFavoriteProductResponseModel data) deleted,
    required TResult Function() error,
    required TResult Function(String message) errorDelete,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddFavoriteProductResponseModel data)? loaded,
    TResult? Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult? Function()? error,
    TResult? Function(String message)? errorDelete,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddFavoriteProductResponseModel data)? loaded,
    TResult Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult Function()? error,
    TResult Function(String message)? errorDelete,
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
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorDelete value) errorDelete,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorDelete value)? errorDelete,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorDelete value)? errorDelete,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddFavoriteProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddFavoriteProductResponseModel data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AddFavoriteProductStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddFavoriteProductResponseModel,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final AddFavoriteProductResponseModel data;

  @override
  String toString() {
    return 'AddFavoriteProductState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

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
    required TResult Function(AddFavoriteProductResponseModel data) loaded,
    required TResult Function(DeleteFavoriteProductResponseModel data) deleted,
    required TResult Function() error,
    required TResult Function(String message) errorDelete,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddFavoriteProductResponseModel data)? loaded,
    TResult? Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult? Function()? error,
    TResult? Function(String message)? errorDelete,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddFavoriteProductResponseModel data)? loaded,
    TResult Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult Function()? error,
    TResult Function(String message)? errorDelete,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorDelete value) errorDelete,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorDelete value)? errorDelete,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorDelete value)? errorDelete,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AddFavoriteProductState {
  const factory _Loaded(final AddFavoriteProductResponseModel data) =
      _$LoadedImpl;

  AddFavoriteProductResponseModel get data;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteFavoriteProductResponseModel data});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$AddFavoriteProductStateCopyWithImpl<$Res, _$DeletedImpl>
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
              as DeleteFavoriteProductResponseModel,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.data);

  @override
  final DeleteFavoriteProductResponseModel data;

  @override
  String toString() {
    return 'AddFavoriteProductState.deleted(data: $data)';
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
    required TResult Function(AddFavoriteProductResponseModel data) loaded,
    required TResult Function(DeleteFavoriteProductResponseModel data) deleted,
    required TResult Function() error,
    required TResult Function(String message) errorDelete,
  }) {
    return deleted(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddFavoriteProductResponseModel data)? loaded,
    TResult? Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult? Function()? error,
    TResult? Function(String message)? errorDelete,
  }) {
    return deleted?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddFavoriteProductResponseModel data)? loaded,
    TResult Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult Function()? error,
    TResult Function(String message)? errorDelete,
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
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorDelete value) errorDelete,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorDelete value)? errorDelete,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorDelete value)? errorDelete,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements AddFavoriteProductState {
  const factory _Deleted(final DeleteFavoriteProductResponseModel data) =
      _$DeletedImpl;

  DeleteFavoriteProductResponseModel get data;
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
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
    extends _$AddFavoriteProductStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AddFavoriteProductState.error()';
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
    required TResult Function(AddFavoriteProductResponseModel data) loaded,
    required TResult Function(DeleteFavoriteProductResponseModel data) deleted,
    required TResult Function() error,
    required TResult Function(String message) errorDelete,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddFavoriteProductResponseModel data)? loaded,
    TResult? Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult? Function()? error,
    TResult? Function(String message)? errorDelete,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddFavoriteProductResponseModel data)? loaded,
    TResult Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult Function()? error,
    TResult Function(String message)? errorDelete,
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
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorDelete value) errorDelete,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorDelete value)? errorDelete,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorDelete value)? errorDelete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddFavoriteProductState {
  const factory _Error() = _$ErrorImpl;
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
    extends _$AddFavoriteProductStateCopyWithImpl<$Res, _$ErrorDeleteImpl>
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
    return 'AddFavoriteProductState.errorDelete(message: $message)';
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
    required TResult Function(AddFavoriteProductResponseModel data) loaded,
    required TResult Function(DeleteFavoriteProductResponseModel data) deleted,
    required TResult Function() error,
    required TResult Function(String message) errorDelete,
  }) {
    return errorDelete(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddFavoriteProductResponseModel data)? loaded,
    TResult? Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult? Function()? error,
    TResult? Function(String message)? errorDelete,
  }) {
    return errorDelete?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddFavoriteProductResponseModel data)? loaded,
    TResult Function(DeleteFavoriteProductResponseModel data)? deleted,
    TResult Function()? error,
    TResult Function(String message)? errorDelete,
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
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorDelete value) errorDelete,
  }) {
    return errorDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorDelete value)? errorDelete,
  }) {
    return errorDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorDelete value)? errorDelete,
    required TResult orElse(),
  }) {
    if (errorDelete != null) {
      return errorDelete(this);
    }
    return orElse();
  }
}

abstract class _ErrorDelete implements AddFavoriteProductState {
  const factory _ErrorDelete(final String message) = _$ErrorDeleteImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorDeleteImplCopyWith<_$ErrorDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
