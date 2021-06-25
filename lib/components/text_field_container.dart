import 'package:flutter/material.dart';
import 'package:proyecto_final/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: KPrimaryLightColor,
          border: Border(
              top: BorderSide(width: 1.0, color: Color(0xFF055E7F)),
              left: BorderSide(width: 1.0, color: Color(0xFF055E7F)),
              right: BorderSide(width: 1.0, color: Color(0xFF055E7F)),
              bottom: BorderSide(width: 1.0, color: Color(0xFF055E7F)))),
      child: child,
    );
  }
}
