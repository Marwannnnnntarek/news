import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeNewsListItem extends StatelessWidget {
  const HomeNewsListItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    this.onTap,
  });

  final String title, subTitle, image;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(imageUrl: image, fit: BoxFit.fill),
            ),
            const SizedBox(height: 4),
            Text(
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              subTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
