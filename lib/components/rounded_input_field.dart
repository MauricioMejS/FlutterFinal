import 'package:flutter/material.dart';
import 'package:proyecto_final/components/text_field_container.dart';
import 'package:proyecto_final/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
          fillColor: KPrimaryLightColor,
          icon: Icon(
            icon,
            color: KPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
