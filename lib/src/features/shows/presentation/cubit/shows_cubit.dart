import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core.dart';
import '../../shows.dart';

@singleton
class ShowsCubit extends Cubit<ShowsState> {
  ShowsCubit() : super(ShowsState.initial());

  Future<void> loadMore([String? showName]) async {
    late final ({RequestErrorResult? errorType, List<ShowModel>? shows}) result;

    if (showName != null) {
      emit(state.copyWith(
        page: -1,
        shows: [],
        showName: showName,
        isLoading: true,
      ));

      final (:show, :shows, :errorType) =
          await getIt<GetShowsByName>().call(state.showName!);

      final receivedShows = [if (show != null) show, ...?shows];

      result = (shows: receivedShows, errorType: errorType);
    } else {
      final hasEarlySearch = state.showName != null;

      emit(
        state.copyWith(
          isLoading: true,
          page: state.page + 1,
          showName: null,
          shows: hasEarlySearch ? [] : state.shows,
        ),
      );

      result = await getIt<GetShows>().call(state.page);
    }

    emit(state.copyWith(
      isLoading: false,
      shows: List<ShowModel>.from(state.shows)..addAll(result.shows ?? []),
      errorMessage: handleRemoteErrorMessage(result.errorType),
    ));
  }
}
