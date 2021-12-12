import 'package:flutter/material.dart';
import 'main_title.dart';

class MenuBar extends StatelessWidget {
  MenuBar({required this.icon, required this.title});

  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainTitle(
          icon: icon,
          text: title,
        ),
        //TODO: function menu icon
        Icon(Icons.menu),
      ],
    );
  }
}