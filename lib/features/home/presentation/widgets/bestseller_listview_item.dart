import 'package:flutter/material.dart';

class BestsellerListviewItem extends StatelessWidget {
  const BestsellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: Image.asset(
            'assets/images/book.jpg',
          ),
        ),
      ),
      const SizedBox(width: 24),
      Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*.50,
          child: const Text(
            'Harry Potter and the Goblet of Fire',
            maxLines: 2,
            overflow:TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'GT Sectra Fine'),
          ),
        ),
        const Text(
          'J.K. Rowling',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'GT Sectra Fine',
              color: Colors.grey),
        ),
        const Row(children: [
          Text(
            '19.99 \$',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'GT Sectra Fine'),
          ),
          SizedBox(width: 16,),
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
          Text(
            '(2390)',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'GT Sectra Fine',
                color: Colors.grey),
          ),
        ])
      ])
    ]);
  }
}
