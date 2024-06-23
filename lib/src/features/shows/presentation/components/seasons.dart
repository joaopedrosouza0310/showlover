import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features.dart';

class Seasons extends StatelessWidget {
  final SeasonsCubit _seasonsCubit;

  const Seasons(
    this._seasonsCubit, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeasonsCubit, SeasonsState>(
      bloc: _seasonsCubit,
      builder: (context, state) {
        if (state.isLoading) return const LoadingSeasons();

        return Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent,
          ),
          child: ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              'Show seasons',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            children: state.seasons.map((season) {
              return ExpansionTile(
                title: Text(
                  'Season ${season.number}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                children: season.episodes.map((episode) {
                  return EpisodeTile(episode);
                }).toList(),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
