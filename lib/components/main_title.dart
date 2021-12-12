import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget implements PreferredSizeWidget {
  MainTitle({required this.icon, required this.text});

  final Icon icon;
  final String text;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
        title: Row(
          children: [
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              text,
            ),
          ],
        ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
