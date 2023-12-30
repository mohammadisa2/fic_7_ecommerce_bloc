part of 'my_favorite_product_bloc.dart';

@freezed
class MyFavoriteProductState with _$MyFavoriteProductState {
  const factory MyFavoriteProductState.initial() = _Initial;
  const factory MyFavoriteProductState.loading() = _Loading;
  const factory MyFavoriteProductState.loaded(
      MyFavoriteProductResponseModel response) = _Loaded;
  const factory MyFavoriteProductState.error(String message) = _Error;
}
