import 'package:flutter/cupertino.dart';

class HorizontalListviewItem extends StatelessWidget {
  const HorizontalListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.30,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
                image: DecorationImage(
          image: AssetImage('assets/images/book.jpg'),
        ))),
      ),
    );
  }
}
