part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = _Loading;
  const factory CartState.loaded(CartResponseModel response) = _Loaded;
  const factory CartState.error() = _Error;
  const factory CartState.deleted(DeleteCartResponseModel data) = _Deleted;
  const factory CartState.errorDelete(String message) = _ErrorDelete;
  const factory CartState.count(CountMyCartResponseModel data) = _Count;
}
