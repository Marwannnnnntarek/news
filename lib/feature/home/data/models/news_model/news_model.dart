import 'result.dart';

class NewsModel {
  String? status;
  int? totalResults;
  List<Result>? results;
  String? nextPage;

  NewsModel({this.status, this.totalResults, this.results, this.nextPage});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    status: json['status'] as String?,
    totalResults: json['totalResults'] as int?,
    results:
        (json['results'] as List<dynamic>?)
            ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList(),
    nextPage: json['nextPage'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'totalResults': totalResults,
    'results': results?.map((e) => e.toJson()).toList(),
    'nextPage': nextPage,
  };
}
