import 'package:go_router/go_router.dart';
import 'package:news/feature/home/presentation/view/category_view.dart';
import 'package:news/feature/home/presentation/view/home_view.dart';

class AppRoutes {
  static const String home = '/';
  static const String category = '/categoryView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: home, builder: (context, state) => const HomeView()),
      GoRoute(
        path: category,
        builder: (context, state) => const CategoryView(),
      ),
    ],
  );
}
