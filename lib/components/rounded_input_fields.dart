import 'package:flutter/material.dart';
import 'package:spout_out/constants.dart';
import 'package:provider/provider.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final double fieldheight, fieldwidth;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.fieldheight,
    this.fieldwidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fieldwidth,
      height: fieldheight,
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryPinkColor1,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFFAFAFA),
          hintText: hintText,
          hintStyle: kInputTextStyleGrey,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color(00000000)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: kPrimaryPurpleColor2),
          ),
        ),
      ),
    );
  }
}
