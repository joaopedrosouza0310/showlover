import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class ShowTileShimmer extends StatelessWidget {
  const ShowTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Image
            CustomShimmer(
              height: 100,
              width: 80,
              borderRadius: BorderRadius.circular(10),
            ),

            // Spacing
            MaterialSpacing.widthDefault(),

            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Name
                  const CustomShimmer(
                    height: 20,
                    width: double.infinity,
                  ),

                  // Spacing
                  MaterialSpacing.heightDefault(),

                  // Summary
                  const CustomShimmer(
                    height: 40,
                    width: double.infinity,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
