import 'package:book_worm/app_router.dart';
import 'package:book_worm/features/home/presentation/widgets/bestseller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16.0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.bookDetailsScreen);
                  },
                  child: BestsellerListviewItem(),
                )),
          );
        });
  }
}
