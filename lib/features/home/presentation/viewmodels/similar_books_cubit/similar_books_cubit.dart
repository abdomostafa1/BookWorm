import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../utiils/failures.dart';
import '../../../data/models/book_model/BookModel.dart';
import '../../../data/services/home_service.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeService) : super(SimilarBooksLoading()){
    fetchSimilarBooks();
  }

  final HomeService homeService;

  fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    try {
      final books = await homeService.fetchNewestBooks();
      emit(SimilarBooksSuccess(books));
    } on Failure catch (failure) {
      emit(SimilarBooksFailure(failure));
    } catch (e) {
      emit(SimilarBooksFailure(Failure(null, e.toString())));
    }
  }
}