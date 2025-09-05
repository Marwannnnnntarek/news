import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news/feature/home/data/service/api_service.dart';
import 'package:news/feature/home/data/repos/home_repo_imp.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>()));
}
