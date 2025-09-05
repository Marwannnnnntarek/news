import 'package:flutter/material.dart';
import 'package:news/feature/home/presentation/widget/home_category_list_provider.dart';
import 'package:news/feature/home/presentation/widget/home_header_bloc_builder.dart';
import 'package:news/feature/home/presentation/widget/home_news_list_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              HomeCategoryListProvider(),
              const SizedBox(height: 20),
              HomeHeaderBlocBuilder(),
              const SizedBox(height: 8),
              HomeNewsListBlocBuilder(),
            ],
          ),
        ),
      ],
    );
  }
}
