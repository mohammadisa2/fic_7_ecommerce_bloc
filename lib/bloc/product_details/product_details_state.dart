part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loading() = _Loading;
  const factory ProductDetailsState.loaded(ProductDetailsResponseModel model) =
      _Loaded;
  const factory ProductDetailsState.error(String error) = _Error;
}
