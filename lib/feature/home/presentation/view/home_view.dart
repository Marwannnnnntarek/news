import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/feature/home/presentation/view_model/cubit/news_cubit.dart';
import 'package:news/feature/home/presentation/widget/home_app_bar.dart';
import 'package:news/feature/home/presentation/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    // fetch default category (General for example)
    context.read<NewsCubit>().fetchNews(categoryId: "top", categoryName: "Top");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: HomeAppBar(), body: HomeViewBody()),
    );
  }
}
