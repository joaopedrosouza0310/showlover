import 'package:flutter/material.dart';

import '../core.dart';

class LoadingMore extends StatelessWidget {
  const LoadingMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          // Title
          const Text('Loading more...'),

          // Spacing
          MaterialSpacing.heightMin(),

          // Loading
          const SizedBox.square(
            dimension: 25,
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
