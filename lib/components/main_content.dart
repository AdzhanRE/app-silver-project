import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )
          ),
          child: child,
        )
    );
  }
}