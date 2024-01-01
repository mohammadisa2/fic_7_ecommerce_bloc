import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/datasources/product_remote_datasource.dart';
import '../../data/models/response/products_response_model.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const _Initial()) {
    on<_GetAll>((event, emit) async {
      emit(const _Loading());
      final result = await ProductRemoteDatasource().getProducts();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_GetByCategory>((event, emit) async {
      emit(const _Loading());
      final result = await ProductRemoteDatasource()
          .getProductsByCategory(event.categoryId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_RefreshProducts>((event, emit) async {
      final result = await ProductRemoteDatasource().getProducts();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_RefreshProductsByCategory>((event, emit) async {
      emit(const _Loading());
      final result = await ProductRemoteDatasource()
          .getProductsByCategory(event.categoryId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_LoadNextPage>((event, emit) async {
      if (state is _Loaded) {
        final currentState = state as _Loaded;
        final currentPage = currentState.model.meta?.currentPage ?? 1;
        final nextPage = currentPage + 1;

        final result =
            await ProductRemoteDatasource().getProducts(page: nextPage);

        result.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_Loaded(mergeModels(currentState.model, r))),
        );
      }
    });
  }

  ProductsResponseModel mergeModels(
    ProductsResponseModel currentModel,
    ProductsResponseModel newModel,
  ) {
    return ProductsResponseModel(
      data: [...currentModel.data ?? [], ...newModel.data ?? []],
      links: newModel.links ?? currentModel.links,
      meta: newModel.meta ?? currentModel.meta,
    );
  }
}
