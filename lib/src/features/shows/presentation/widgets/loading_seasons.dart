import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class LoadingSeasons extends StatelessWidget {
  const LoadingSeasons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title
        const Text(
          'Loading seasons...',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        // Spacing
        MaterialSpacing.heightDefault(),

        // Loading
        const CircularProgressIndicator(),
      ],
    );
  }
}
