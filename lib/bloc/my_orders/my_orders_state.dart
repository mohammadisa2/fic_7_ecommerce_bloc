part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  const factory MyOrdersState.initial() = _Initial;
  const factory MyOrdersState.loading() = _Loading;
  const factory MyOrdersState.loaded(MyOrderResponseModel myOrderResponse) =
      _Loaded;
  const factory MyOrdersState.error(String error) = _Error;
}
