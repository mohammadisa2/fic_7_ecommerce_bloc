part of 'add_review_bloc.dart';

@freezed
class AddReviewEvent with _$AddReviewEvent {
  const factory AddReviewEvent.started() = _Started;
  const factory AddReviewEvent.create(ReviewRequestModel request) = _Create;
}
