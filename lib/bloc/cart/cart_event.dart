part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.fecthMyCart() = _FecthMyCart;
  const factory CartEvent.countMyCart() = _CountMyCart;
  const factory CartEvent.deleteCart(CartRequestModel requestModel) =
      _DeleteCart;
}
