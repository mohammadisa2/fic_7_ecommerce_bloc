part of 'add_favorite_product_bloc.dart';

@freezed
class AddFavoriteProductEvent with _$AddFavoriteProductEvent {
  const factory AddFavoriteProductEvent.started() = _Started;
  const factory AddFavoriteProductEvent.add(
      AddFavoriteProductRequestModel request) = _Add;
  const factory AddFavoriteProductEvent.delete(
      AddFavoriteProductRequestModel request) = _Delete;
}
