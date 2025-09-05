import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/feature/home/data/models/category_model.dart';
import 'package:news/feature/home/presentation/view_model/cubit/news_cubit.dart';
import 'package:news/feature/home/presentation/widget/home_category_list.dart';

class HomeCategoryListProvider extends StatelessWidget {
  const HomeCategoryListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeCategoryList(
      categories: categories,
      onCategorySelected: (CategoryModel category) {
        context.read<NewsCubit>().fetchNews(
          categoryId: category.id,
          categoryName: category.name,
        );
      },
    );
  }
}
