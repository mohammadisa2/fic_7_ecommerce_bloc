part of 'my_favorite_product_bloc.dart';

@freezed
class MyFavoriteProductEvent with _$MyFavoriteProductEvent {
  const factory MyFavoriteProductEvent.started() = _Started;
  const factory MyFavoriteProductEvent.fetchMyFavProd() = _FetchMyFavProd;
  const factory MyFavoriteProductEvent.refreshMyFavProd() = _RefreshMyFavProd;
}
