import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,
    this.textColor = Colors.white,
    this.onPressed,
    this.backgroundColor = Colors.white,
    required this.text,
    required this.borderRadius});

  final String text;
  void Function()? onPressed;
  Color backgroundColor;
  Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
      ),
    );
  }
}
