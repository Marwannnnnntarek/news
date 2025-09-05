import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/feature/home/presentation/view_model/cubit/news_cubit.dart';
import 'package:news/feature/home/presentation/widget/home_news_list.dart';

class HomeNewsListBlocBuilder extends StatelessWidget {
  const HomeNewsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is NewsLoaded) {
          return HomeNewsList(news: state.news);
        } else if (state is NewsError) {
          return Center(child: Text(state.message));
        }
        return Container();
      },
    );
  }
}
