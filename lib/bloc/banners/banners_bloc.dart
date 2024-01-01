import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fic_7_ecommerce/data/models/response/banners_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasources/banner_remote_datasource.dart';

part 'banners_event.dart';
part 'banners_state.dart';
part 'banners_bloc.freezed.dart';

class BannersBloc extends Bloc<BannersEvent, BannersState> {
  BannersBloc() : super(const _Initial()) {
    on<_GetBanners>((event, emit) async {
      emit(const _Loading());
      final result = await BannerRemoteDatasource().getBanners();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
