import 'package:book_worm/constants.dart';
import 'package:book_worm/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined))
            ]),
          ),
          automaticallyImplyLeading: false,
        ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16,width: double.infinity,),
          SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: const CustomBookImage())
        ],
      ),
      ),
    );
  }
}
