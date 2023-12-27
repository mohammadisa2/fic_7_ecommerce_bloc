part of 'must_review_bloc.dart';

@freezed
class MustReviewState with _$MustReviewState {
  const factory MustReviewState.initial() = _Initial;
  const factory MustReviewState.loading() = _Loading;
  const factory MustReviewState.loaded(MustReviewResponseModel model) = _Loaded;
  const factory MustReviewState.error(String error) = _Error;
}
