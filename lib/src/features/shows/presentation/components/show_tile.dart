import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:showlover/src/features/shows/shows.dart';

import '../../../../core/core.dart';

class ShowTile extends StatelessWidget {
  final ShowModel show;

  const ShowTile(
    this.show, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          RoutesPath.details.path,
          extra: show,
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Image
              ShowImage(imageUrl: show.image.medium),

              // Spacing
              MaterialSpacing.widthDefault(),

              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Name
                    Text(
                      show.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    // Summary
                    Text(
                      show.summary.removeAllHtmlTags(),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
