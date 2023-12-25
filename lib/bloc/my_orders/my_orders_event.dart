part of 'my_orders_bloc.dart';

@freezed
class MyOrdersEvent with _$MyOrdersEvent {
  const factory MyOrdersEvent.fetchOrders() = FetchOrders;
}
