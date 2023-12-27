import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fic_7_ecommerce/data/datasources/my_order_remote_datasource.dart';
import 'package:fic_7_ecommerce/data/models/response/my_order_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';
part 'my_orders_bloc.freezed.dart';

class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc() : super(const MyOrdersState.initial()) {
    on<FetchOrders>((event, emit) async {
      final result = await MyOrderRemoteDatasource().fetchOrders();
      emit(result.fold(
        (error) => MyOrdersState.error(error),
        (myOrderResponse) => MyOrdersState.loaded(myOrderResponse),
      ));
    });
  }
}
