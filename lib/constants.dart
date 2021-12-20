import 'package:flutter/material.dart';

const kInputDecoration = InputDecoration(
  prefixIcon: Icon(Icons.account_circle),
  hintText: 'Nama Pengguna',
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),

);

BoxDecoration kBoxDecoration() {
  return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      )
  );
}

//Text & Font
class KTextNSize extends StatelessWidget {
  KTextNSize({required this.text, required this.fontSize, this.fontFamily, this.fontColor, this.fontWeight});

  final String text;
  final double fontSize;
  final String? fontFamily;
  final Color? fontColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          color: fontColor,
      ),
    );
  }
}