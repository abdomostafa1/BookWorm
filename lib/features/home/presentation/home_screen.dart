import 'package:book_worm/features/home/presentation/widgets/horizontal_listview_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:HorizontalListviewItem(),
    );
  }
}
