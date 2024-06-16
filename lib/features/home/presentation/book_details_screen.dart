import 'package:book_worm/constants.dart';
import 'package:book_worm/features/home/presentation/widgets/book_rating.dart';
import 'package:book_worm/features/home/presentation/widgets/custom_book_image.dart';
import 'package:book_worm/features/home/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../data/services/home_service.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key});

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined))
          ]),
        ),
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                  width: double.infinity,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .45,
                    child: const CustomBookImage()),
                SizedBox(height: MediaQuery.of(context).size.height * .08),
                const Text(
                  'The Jungle Book',
                  style: TextStyle(fontSize: 30, fontFamily: 'GT Sectra Fine'),
                ),
                const Opacity(
                    opacity: 0.70,
                    child: Text(
                      'Rudyard Kipling',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'GT Sectra Fine'),
                    )),
                const SizedBox(height: 24),
                const BookRating(),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: '19.99\$',
                          textColor: Colors.black,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          text: 'Free Preview',
                          backgroundColor: const Color(0xffE67966),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child:  Text('You can also like',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 8),
                SizedBox(
                height: MediaQuery.of(context).size.height*0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      CustomBookImage();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
