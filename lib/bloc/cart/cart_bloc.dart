import 'package:fic_7_ecommerce/data/models/response/count_my_cart_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fic_7_ecommerce/data/models/request/cart_request_model.dart';
import 'package:fic_7_ecommerce/data/models/response/cart_response_model.dart';
import 'package:fic_7_ecommerce/data/models/response/delete_cart_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasources/cart_remote_datasource.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _Initial()) {
    on<_FecthMyCart>((event, emit) async {
      emit(const _Loading());
      final result = await CartRemoteDatasource().getCarts();
      result.fold(
        (l) => emit(const _Error()),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_DeleteCart>((event, emit) async {
      emit(const _Loading());
      final response =
          await CartRemoteDatasource().deletCart(event.requestModel);
      response.fold(
        (l) => emit(_ErrorDelete(l)),
        (r) => emit(_Deleted(r)),
      );
    });

    on<_CountMyCart>((event, emit) async {
      emit(const _Loading());
      final result = await CartRemoteDatasource().getCountMyCart();
      result.fold(
        (l) => emit(const _Error()),
        (r) => emit(_Count(r)),
      );
    });
  }
}
