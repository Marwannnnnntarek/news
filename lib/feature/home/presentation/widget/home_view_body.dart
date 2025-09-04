import 'package:flutter/material.dart';
import 'package:news/feature/home/data/models/category_model.dart';
import 'package:news/feature/home/presentation/widget/home_category_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [HomeCategoryList(categories: categories)]);
  }
}
