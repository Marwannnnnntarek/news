import 'package:flutter/material.dart';
import 'package:news/feature/home/presentation/widget/home_app_bar.dart';
import 'package:news/feature/home/presentation/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: HomeAppBar(), body: HomeViewBody()),
    );
  }
}
