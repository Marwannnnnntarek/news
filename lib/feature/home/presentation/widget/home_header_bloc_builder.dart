import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/feature/home/presentation/view_model/cubit/news_cubit.dart';
import 'package:news/feature/home/presentation/widget/home_header.dart';

class HomeHeaderBlocBuilder extends StatelessWidget {
  const HomeHeaderBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsLoaded) {
          return HomeHeader(header: state.selectedCategoryName);
        }
        return const CircleAvatar();
      },
    );
  }
}
