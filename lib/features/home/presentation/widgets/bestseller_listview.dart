import 'package:book_worm/features/home/presentation/widgets/bestseller_listview_item.dart';
import 'package:flutter/material.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: SizedBox(height:MediaQuery.of(context).size.height*0.20,
            child: BestsellerListviewItem()),
      );
    });
  }
}
