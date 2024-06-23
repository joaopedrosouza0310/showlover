import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data.dart';

part 'shows_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ShowsState with _$ShowsState {
  const ShowsState._();

  const factory ShowsState({
    required bool isLoadingMore,
    required List<ShowModel> shows,
    required String? errorMessage,
    required bool hasInternet,
    required int page,
  }) = _ShowsState;

  factory ShowsState.initial() => const ShowsState(
        shows: [],
        isLoadingMore: true,
        errorMessage: null,
        hasInternet: false,
        page: -1,
      );
}
