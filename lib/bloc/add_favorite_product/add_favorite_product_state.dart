part of 'add_favorite_product_bloc.dart';

@freezed
class AddFavoriteProductState with _$AddFavoriteProductState {
  const factory AddFavoriteProductState.initial() = _Initial;
  const factory AddFavoriteProductState.loading() = _Loading;
  const factory AddFavoriteProductState.loaded(
      AddFavoriteProductResponseModel data) = _Loaded;
  const factory AddFavoriteProductState.deleted(
      DeleteFavoriteProductResponseModel data) = _Deleted;
  const factory AddFavoriteProductState.error() = _Error;
  const factory AddFavoriteProductState.errorDelete(String message) =
      _ErrorDelete;
}
