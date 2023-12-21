part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.started() = _Started;
  const factory ProductsEvent.getAll() = _GetAll;
  const factory ProductsEvent.getByCategory(int categoryId) = _GetByCategory;
  const factory ProductsEvent.refresh() = _RefreshProducts;
  const factory ProductsEvent.loadNextPage() = _LoadNextPage;
}
