part of 'must_review_bloc.dart';

@freezed
class MustReviewEvent with _$MustReviewEvent {
  const factory MustReviewEvent.started() = _Started;
  const factory MustReviewEvent.mustReview(int productId) = _MustReview;
}
