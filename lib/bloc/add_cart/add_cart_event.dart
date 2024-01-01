part of 'add_cart_bloc.dart';

@freezed
class AddCartEvent with _$AddCartEvent {
  const factory AddCartEvent.started() = _Started;
  const factory AddCartEvent.add(AddCartRequestModel request) = _Add;
}
