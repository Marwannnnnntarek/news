import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news/feature/home/data/models/news_model/result.dart';
import 'package:news/feature/home/data/repos/home_repo_imp.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final HomeRepoImp homeRepo;

  NewsCubit(this.homeRepo) : super(NewsInitial());

  Future<void> fetchNews() async {
    emit(NewsLoading());
    final result = await homeRepo.fetchNews();
    result.fold(
      (error) => emit(NewsError(error.message)),
      (news) => emit(NewsLoaded(news)),
    );
  }
}
