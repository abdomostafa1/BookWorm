import 'package:bloc/bloc.dart';
import 'package:book_worm/features/home/data/models/book_model/BookModel.dart';
import 'package:book_worm/utiils/failures.dart';
import 'package:meta/meta.dart';

import '../../../data/services/home_service.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeService) : super(FeaturedBooksLoading()){
    fetchFeaturedBooks();
  }

  final HomeService homeService;

  fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    try {
      final books = await homeService.fetchFeaturedBooks();
      emit(FeaturedBooksSuccess(books));
    } on Failure catch (failure) {
      emit(FeaturedBooksFailure(failure));
    } catch (e) {
      emit(FeaturedBooksFailure(Failure(null, e.toString())));
    }
  }
}
