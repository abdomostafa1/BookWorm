import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.ratingAverage, required this.ratingsCount});

  final int ratingAverage;
  final int ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellowAccent,
        ),
        Text(
          ratingAverage.toString(),
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'GT Sectra Fine'),
        ),
        SizedBox(width:6),
        Text(
          '($ratingsCount)',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'GT Sectra Fine',
              color: Colors.grey),
        ),
      ],
    );
  }
}
