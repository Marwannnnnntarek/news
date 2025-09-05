import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeNewsListItemImage extends StatelessWidget {
  const HomeNewsListItemImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 16 / 9, // adjust ratio as you like
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(child: CircleAvatar()),
          errorWidget:
              (context, url, error) =>
                  const Icon(Icons.broken_image, size: 50, color: Colors.grey),
        ),
      ),
    );
  }
}
