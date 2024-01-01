import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fic_7_ecommerce/data/datasources/cart_remote_datasource.dart';
import 'package:fic_7_ecommerce/data/models/request/add_cart_request_model.dart';
import 'package:fic_7_ecommerce/data/models/response/add_cart_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cart_event.dart';
part 'add_cart_state.dart';
part 'add_cart_bloc.freezed.dart';

class AddCartBloc extends Bloc<AddCartEvent, AddCartState> {
  AddCartBloc() : super(const _Initial()) {
    on<_Add>((event, emit) async {
      emit(const _Loading());
      final response = await CartRemoteDatasource().addCart(event.request);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
