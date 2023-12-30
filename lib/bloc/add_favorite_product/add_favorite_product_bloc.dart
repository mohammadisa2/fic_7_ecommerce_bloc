import 'package:fic_7_ecommerce/data/models/response/delete_favorite_product_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fic_7_ecommerce/data/datasources/favorite_product_remote_datasource.dart';
import 'package:fic_7_ecommerce/data/models/request/add_favorite_product_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/response/add_favorite_product_response_model.dart';

part 'add_favorite_product_event.dart';
part 'add_favorite_product_state.dart';
part 'add_favorite_product_bloc.freezed.dart';

class AddFavoriteProductBloc
    extends Bloc<AddFavoriteProductEvent, AddFavoriteProductState> {
  AddFavoriteProductBloc() : super(const _Initial()) {
    on<_Add>((event, emit) async {
      emit(const _Loading());
      final response = await FavoriteProductRemoteDatasource()
          .addFavoriteProduct(event.request);
      response.fold(
        (l) => emit(const _Error()),
        (r) => emit(_Loaded(r)),
      );
    });
    on<_Delete>((event, emit) async {
      emit(const _Loading());
      final response = await FavoriteProductRemoteDatasource()
          .deleteFavoriteProduct(event.request);
      response.fold(
        (l) => emit(_ErrorDelete(l)),
        (r) => emit(_Deleted(r)),
      );
    });
  }
}
