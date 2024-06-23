import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data.dart';

part 'shows_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ShowsState with _$ShowsState {
  const ShowsState._();

  const factory ShowsState({
    required bool isLoading,
    required List<ShowModel> shows,
    required String? errorMessage,
    required int page,
    required String? showName,
  }) = _ShowsState;

  factory ShowsState.initial() => const ShowsState(
        shows: [],
        isLoading: true,
        errorMessage: null,
        page: -1,
        showName: null,
      );
}
