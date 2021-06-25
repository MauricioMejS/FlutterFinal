import 'package:flutter/material.dart';
import 'package:proyecto_final/components/text_field_container.dart';
import 'package:proyecto_final/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
