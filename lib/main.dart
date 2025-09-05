import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/utils/app_routes.dart';
import 'package:news/core/utils/setup.dart';
import 'package:news/feature/home/data/repos/home_repo_imp.dart';
import 'package:news/feature/home/presentation/view_model/cubit/news_cubit.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(getIt.get<HomeRepoImp>()),
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
