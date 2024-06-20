import 'package:book_worm/features/home/presentation/widgets/book_rating.dart';
import 'package:book_worm/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app_router.dart';
import '../../data/models/book_model/BookModel.dart';

class NewestBookListviewItem extends StatelessWidget {
  const NewestBookListviewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.go(AppRouter.bookDetailsScreen, extra: bookModel);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                borderRadius: 8),
            const SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .50,
                  child: Text(
                    bookModel.volumeInfo.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'GT Sectra Fine'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .50,
                  child: Text(
                    bookModel.volumeInfo.authors![0],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'GT Sectra Fine',
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .50,
                    child: const Row(
                      children: [
                        Text(
                          'Free',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GT Sectra Fine'),
                        ),
                        Expanded(child: SizedBox(width: 16)),
                        BookRating(
                          ratingAverage: 0,
                          ratingsCount: 0,
                        )
                      ],
                    ))
              ],
            )
          ],
        ));
  }
}
