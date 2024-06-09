import 'package:flutter/material.dart';

import 'horizontal_listview_item.dart';

class BooksHorizontalListview extends StatelessWidget {
  const BooksHorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return HorizontalListviewItem();
          }),
    );
  }
}
