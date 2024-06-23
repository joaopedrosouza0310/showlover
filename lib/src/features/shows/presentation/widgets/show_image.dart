import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;

  const ShowImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height ?? 100,
        width: width ?? 80,
        fit: BoxFit.cover,
        placeholder: (_, __) => Container(
          alignment: Alignment.center,
          child: const SizedBox.square(
            dimension: 30,
            child: CircularProgressIndicator(),
          ),
        ),
        errorWidget: (_, __, ___) => const Icon(Icons.error),
      ),
    );
  }
}
