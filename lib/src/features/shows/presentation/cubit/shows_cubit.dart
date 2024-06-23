import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core.dart';
import '../../shows.dart';

@singleton
class ShowsCubit extends Cubit<ShowsState> {
  ShowsCubit() : super(ShowsState.initial());

  Future<void> loadMore([String? title]) async {

    if(title != null){
      emit(state.copyWith(
        page: -1,
        shows: [],
      ));
    }



    emit(
      state.copyWith(
        isLoadingMore: true,
        page: state.page + 1,
      ),
    );

    final (:errorType, :shows) = await getIt<GetShows>().call(state.page);

    emit(state.copyWith(
      isLoadingMore: false,
      shows: List<ShowModel>.from(state.shows)..addAll(shows ?? []),
      errorMessage: handleRemoteErrorMessage(errorType),
    ));
  }
}
