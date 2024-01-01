import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fic_7_ecommerce/data/datasources/review_remote_datasource.dart';
import 'package:fic_7_ecommerce/data/models/response/must_review_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'must_review_event.dart';
part 'must_review_state.dart';
part 'must_review_bloc.freezed.dart';

class MustReviewBloc extends Bloc<MustReviewEvent, MustReviewState> {
  MustReviewBloc() : super(const _Initial()) {
    on<_MustReview>((event, emit) async {
      emit(const _Loading());
      final result = await ReviewRemoteDatasource().mustReview(event.productId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
