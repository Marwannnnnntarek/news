import 'package:flutter/material.dart';
import 'package:news/feature/home/presentation/widget/home_news_list_item_image.dart';

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
            HomeNewsListItemImage(image: image),

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
