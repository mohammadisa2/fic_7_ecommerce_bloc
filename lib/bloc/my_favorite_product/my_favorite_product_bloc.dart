import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fic_7_ecommerce/data/datasources/favorite_product_remote_datasource.dart';
import 'package:fic_7_ecommerce/data/models/response/my_favorite_product_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_favorite_product_event.dart';
part 'my_favorite_product_state.dart';
part 'my_favorite_product_bloc.freezed.dart';

class MyFavoriteProductBloc
    extends Bloc<MyFavoriteProductEvent, MyFavoriteProductState> {
  MyFavoriteProductBloc() : super(const _Initial()) {
    on<_FetchMyFavProd>((event, emit) async {
      emit(const _Loading());
      final result =
          await FavoriteProductRemoteDatasource().getMyFavoriteProduct();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_RefreshMyFavProd>((event, emit) async {
      final result =
          await FavoriteProductRemoteDatasource().getMyFavoriteProduct();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
