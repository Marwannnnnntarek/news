import 'package:dartz/dartz.dart';
import 'package:news/core/errors/app_errors.dart';
import 'package:news/feature/home/data/models/news_model/result.dart';
import 'package:news/feature/home/data/models/service/api_service.dart';
import 'package:news/feature/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp(this.apiService);
  @override
  Future<Either<AppError, List<Result>>> fetchNews() async {
    try {
      var response = await apiService.get(
        endPoint: 'latest',
        queryParameters: {'country': 'eg'},
      );

      if (response['results'] == null) {
        return Left(AppError("No data found"));
      }

      final results = response['results'] as List;

      final news = results.map((item) => Result.fromJson(item)).toList();

      return Right(news);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
