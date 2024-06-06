import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color(0xff191D38),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/worm.jpg'),
            const Text('Read Free Books')
          ]),
    ),);
    // color: const Color(0xff191D38),
    //   child: ;
  }
}
