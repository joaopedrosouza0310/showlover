import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

class SeasonsCubit extends Cubit<SeasonsState> {
  SeasonsCubit() : super(SeasonsState.initial());

  Future<void> loadSeasons(int showId) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final (:errorType, :seasons) = await getIt<GetSeasons>().call(showId);

    emit(state.copyWith(
      isLoading: false,
      seasons: List<SeasonModel>.from(state.seasons)..addAll(seasons ?? []),
      errorMessage: handleRemoteErrorMessage(errorType),
    ));

    if (state.seasons.isNotEmpty) {
      loadEpisodes(showId);
    }
  }

  Future<void> loadEpisodes(int showId) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final (:errorType, :episodes) = await getIt<GetEpisodes>().call(showId);

    if (episodes != null) {
      addEpisodesToSeasons(
        List<SeasonModel>.from(state.seasons),
        episodes,
      );
    }

    emit(
      state.copyWith(
        errorMessage: handleRemoteErrorMessage(errorType),
      ),
    );
  }

  void addEpisodesToSeasons(
    List<SeasonModel> seasons,
    List<EpisodeModel> episodes,
  ) {
    for (var episode in episodes) {
      for (var season in seasons) {
        if (season.number == episode.season) {
          season.episodes.add(episode);
          break;
        }
      }
    }

    emit(state.copyWith(
      seasons: seasons,
      isLoading: false,
    ));
  }
}
