import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButtonPink extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  //Часть экрана, которуя занимает кнопка
  final double buttonwidth, buttonheight;
  const RoundedButtonPink({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryPinkColor1,
    this.textColor = Colors.white,
    this.buttonwidth,
    this.buttonheight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonwidth,
      height: buttonheight,
      //Чтобы сделать закругления радиус из фигмы
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: color,
          textColor: Colors.white,
          onPressed: press,
          child: Text(
            text,
            style: kHeadlingTextStyleWhite5,
          ),
        ),
      ),
    );
  }
}

class RoundedButtonBlack extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double buttonwidth, buttonheight;
  const RoundedButtonBlack({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryBlackColor1,
    this.textColor = Colors.white,
    this.buttonwidth,
    this.buttonheight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonwidth,
      height: buttonheight,
      child: ClipRRect(
        //borderRadius: BorderRadius.circular(16),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: kPrimaryPinkColor1, width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: color,
          textColor: Colors.white,
          onPressed: press,
          child: Text(
            text,
            style: kHeadlingTextStyleWhite5,
          ),
        ),
      ),
    );
  }
}
