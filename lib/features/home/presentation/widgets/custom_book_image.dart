import 'package:flutter/cupertino.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
                image: DecorationImage(
          image: NetworkImage(imageUrl),
        ))),
      ),
    );
  }
}
