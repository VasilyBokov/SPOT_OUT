import 'package:flutter/material.dart';
import 'package:spout_out/components/text_filed_containers.dart';
import 'package:spout_out/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  //final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    //this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryPinkColor1,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
