import 'package:flutter/material.dart';
import 'package:news/feature/home/presentation/widget/category_view_body.dart';
import 'package:news/feature/home/presentation/widget/home_app_bar.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: HomeAppBar(), body: CategoryViewBody()),
    );
  }
}
