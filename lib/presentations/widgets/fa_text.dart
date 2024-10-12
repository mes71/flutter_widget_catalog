import 'package:flutter/material.dart';

class FaText extends StatelessWidget {
  const FaText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.rtl,
    );
  }
}
