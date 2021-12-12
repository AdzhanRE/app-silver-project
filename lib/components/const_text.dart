import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  const KText({ required this.title });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
      ),
    );
  }
}