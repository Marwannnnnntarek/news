import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/utils/app_routes.dart';
import 'package:news/feature/home/data/models/category_model.dart';
import 'package:news/feature/home/presentation/widget/home_category_list_item.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key, required this.categories});
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13, // control height
      child: ListView.separated(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return HomeCategoryListItem(
            image: categories[index].image,
            title: categories[index].name,
            onTap: () => context.push(AppRoutes.category),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: categories.length,
      ),
    );
  }
}
