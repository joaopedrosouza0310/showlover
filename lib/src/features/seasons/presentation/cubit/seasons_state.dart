import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data.dart';

part 'seasons_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SeasonsState with _$SeasonsState {
  const SeasonsState._();

  const factory SeasonsState({
    required bool isLoading,
    required List<SeasonModel> seasons,
    required String? errorMessage,
    required bool hasInternet,
  }) = _SeasonsState;

  factory SeasonsState.initial() => const SeasonsState(
        seasons: [],
        isLoading: true,
        errorMessage: null,
        hasInternet: false,
      );
}
