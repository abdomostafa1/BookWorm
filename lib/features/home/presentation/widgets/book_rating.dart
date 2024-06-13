import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellowAccent,
        ),
        Text(
          '4.8',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'GT Sectra Fine'),
        ),
        SizedBox(width:6),
        Text(
          '(2390)',
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
