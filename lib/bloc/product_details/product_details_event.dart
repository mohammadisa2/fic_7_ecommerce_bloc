part of 'product_details_bloc.dart';

@freezed
class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.started() = _Started;
  const factory ProductDetailsEvent.getProductDetails(int productId) =
      _GetProductDetails;
  const factory ProductDetailsEvent.refresh(int productId) =
      _RefreshProductDetails;
}
