import 'package:bloc/bloc.dart';
import 'package:fic_7_ecommerce/data/datasources/review_remote_datasource.dart';
import 'package:fic_7_ecommerce/data/models/request/review_request_model.dart';
import 'package:fic_7_ecommerce/data/models/response/add_review_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_review_event.dart';
part 'add_review_state.dart';
part 'add_review_bloc.freezed.dart';

class AddReviewBloc extends Bloc<AddReviewEvent, AddReviewState> {
  AddReviewBloc() : super(const _Initial()) {
    on<_Create>((event, emit) async {
      emit(const _Loading());
      final response = await ReviewRemoteDatasource().addReview(event.request);
      response.fold(
        (l) => emit(const _Error()),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
