import 'package:flutter/material.dart';
import 'package:showlover/src/core/core.dart';

import '../../../features.dart';

class EpisodeTile extends StatefulWidget {
  final EpisodeModel episode;

  const EpisodeTile(
    this.episode, {
    super.key,
  });

  @override
  State<EpisodeTile> createState() => _EpisodeTileState();
}

class _EpisodeTileState extends State<EpisodeTile> {
  void _showEpisodeDetails(EpisodeModel episode) {
    showDialog(
      context: context,
      builder: (context) {
        return EpisodeDetailsDialog(episode);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: () => _showEpisodeDetails(widget.episode),
        child: ListTile(
          leading: widget.episode.image != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network(
                      widget.episode.image!.medium,
                      height: 50,
                      width: 50,
                    ),
                  ],
                )
              : null,
          title: Text(
            '${widget.episode.number} - ${widget.episode.name}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            (widget.episode.summary ?? '').removeAllHtmlTags(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
