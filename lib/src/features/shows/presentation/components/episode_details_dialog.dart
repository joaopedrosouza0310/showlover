import 'package:flutter/material.dart';
import 'package:showlover/src/core/core.dart';
import 'package:showlover/src/features/features.dart';

class EpisodeDetailsDialog extends StatelessWidget {
  final EpisodeModel episode;
  const EpisodeDetailsDialog(
    this.episode, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Name and number and image
                Row(
                  children: [
                    // Image
                    if (episode.image?.medium != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          episode.image!.medium,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),

                    // Spacing
                    MaterialSpacing.widthMin(),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Name
                          Text(
                            '${episode.number} - ${episode.name}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // Season
                          Text(
                            'Season ${episode.season}',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Spacing
                MaterialSpacing.heightDefault(),

                // Summary
                SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    child: Text(
                      (episode.summary ?? 'No summary').removeAllHtmlTags(),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Close button
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(
                Icons.close,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
