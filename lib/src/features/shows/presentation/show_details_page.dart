import 'package:flutter/material.dart';
import 'package:showlover/src/core/core.dart';
import 'package:showlover/src/features/features.dart';

class ShowDetailsPage extends StatefulWidget {
  final ShowModel show;

  const ShowDetailsPage(
    this.show, {
    super.key,
  });

  @override
  State<ShowDetailsPage> createState() => _ShowDetailsPageState();
}

class _ShowDetailsPageState extends State<ShowDetailsPage> {
  late final SeasonsCubit seasonsCubit;

  @override
  void initState() {
    super.initState();

    seasonsCubit = SeasonsCubit()..loadSeasons(widget.show.id);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Show details'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            BackgroundImage(
              size: size,
              imageUrl: widget.show.image.original,
            ),
            ListView(
              padding: const EdgeInsets.all(24),
              children: [
                // header
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image
                    ShowImage(
                      imageUrl: widget.show.image.medium,
                      height: 200,
                      width: 130,
                    ),

                    // Spacing
                    MaterialSpacing.widthDefault(),

                    // Content
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name
                          Text(
                            widget.show.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // Genres
                          const Text(
                            'Genres:',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Wrap(
                            spacing: 10,
                            children: widget.show.genres.map<Widget>((genre) {
                              return Chip(
                                padding: EdgeInsets.zero,
                                label: Text(
                                  genre,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                backgroundColor: Colors.grey,
                              );
                            }).toList(),
                          ),

                          // Rating
                          if (widget.show.rating.average != null)
                            Text(
                              'Rating: ${widget.show.rating.average}',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),

                          Text(
                            'Days and time: ${widget.show.schedule.days.join(', ')} at ${widget.show.schedule.time}',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Spacing
                MaterialSpacing.heightDefault(),

                // Summary
                Text(
                  widget.show.summary.removeAllHtmlTags(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),

                // Spacing
                MaterialSpacing.heightMin(),

                // Seasons and episodes
                Seasons(seasonsCubit)
              ],
            ),
          ],
        ));
  }
}
