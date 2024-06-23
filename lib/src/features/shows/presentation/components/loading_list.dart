import 'package:flutter/material.dart';
import 'package:showlover/src/features/shows/shows.dart';

class LoadingList extends StatelessWidget {
  const LoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, __) {
        return const ShowTileShimmer();
      },
    );
  }
}
