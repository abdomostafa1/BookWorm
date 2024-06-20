import 'package:bloc/bloc.dart';
import 'package:book_worm/features/home/data/models/book_model/BookModel.dart';
import 'package:meta/meta.dart';

import '../../../../../utiils/failures.dart';
import '../../../data/services/home_service.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeService) : super(NewestBooksLoading()){
    fetchNewestBooks();
  }

  final HomeService homeService;

  fetchNewestBooks() async {
    emit(NewestBooksLoading());
    try {
      final books = await homeService.fetchNewestBooks();
      emit(NewestBooksSuccess(books));
    } on Failure catch (failure) {
      emit(NewestBooksFailure(failure));
    } catch (e) {
      emit(NewestBooksFailure(Failure(null, e.toString())));
    }
  }
}
