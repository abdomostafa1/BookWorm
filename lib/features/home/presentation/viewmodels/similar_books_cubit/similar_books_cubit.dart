import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model/BookModel.dart';
import '../../../../../core/failures.dart';
import '../../../data/services/home_service.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeService) : super(SimilarBooksLoading());

  final HomeService homeService;

  fetchSimilarBooks({required String category} ) async {
    emit(SimilarBooksLoading());
    try {
      final books = await homeService.fetchSimilarBooks(category: category);
      emit(SimilarBooksSuccess(books));
    } on Failure catch (failure) {
      emit(SimilarBooksFailure(failure));
    } catch (e) {
      emit(SimilarBooksFailure(Failure(null, e.toString())));
    }
  }
}
