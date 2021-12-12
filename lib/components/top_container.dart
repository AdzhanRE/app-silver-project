import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  TopContainer({this.height, this.width, required this.child, this.padding, this.color});

  final double? height;
  final double? width;
  final Widget child;
  final EdgeInsets? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: color,
          ),
      height: height,
      width: width,
      child: child,
    );
  }
}
