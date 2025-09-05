import 'package:flutter/widgets.dart';
import 'package:news/feature/home/data/models/news_model/result.dart';
import 'package:news/feature/home/presentation/widget/home_news_list_item.dart';

class HomeNewsList extends StatelessWidget {
  const HomeNewsList({super.key, required this.news});

  final List<Result> news;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 32),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return HomeNewsListItem(
          title: news[index].title ?? 'title',
          subTitle: news[index].description ?? 'subtitle',
          image: news[index].imageUrl ?? 'assets/images/general.avif',
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 32),
      itemCount: news.length,
    );
  }
}
