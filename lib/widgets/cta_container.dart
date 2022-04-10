import 'package:flutter/material.dart';

class CTAContainer extends StatelessWidget {
  final String text;
  final String fontfamily;
  final Color textcolor;
  final Color backgroundcolor;
  const CTAContainer(
      {Key? key,
      required this.text,
      required this.backgroundcolor,
      required this.textcolor,
      required this.fontfamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(16)),
      height: 55,
      width: 327,
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: textcolor, fontFamily: fontfamily),
      )),
    );
  }
}
