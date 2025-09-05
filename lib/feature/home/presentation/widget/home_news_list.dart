import 'package:flutter/widgets.dart';
import 'package:news/feature/home/presentation/widget/home_news_list_item.dart';

class HomeNewsList extends StatelessWidget {
  const HomeNewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return HomeNewsListItem(
              title: 'Title',
              subTitle: 'subtitle',
              image: 'assets/images/general.avif',
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: 10,
        ),
      ],
    );
  }
}
