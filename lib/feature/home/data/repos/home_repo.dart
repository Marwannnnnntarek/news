import 'package:dartz/dartz.dart';
import 'package:news/core/errors/app_errors.dart';
import 'package:news/feature/home/data/models/news_model/result.dart';

abstract class HomeRepo {
  Future<Either<AppError, List<Result>>> fetchNews({required String category});
}
