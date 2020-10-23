import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spout_out/components/clickable_text.dart';
import 'package:spout_out/components/rounded_buttons.dart';
import 'package:spout_out/components/rounded_input_fields.dart';
import 'package:spout_out/constants.dart';

class NewLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
    ));
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 72, 0, 0),
                    child: Text(
                      "Рады тебя видеть!",
                      style: kHeadlingTextStyleBlack1,
                    ),
                  ),
                  SizedBox(height: 36),
                  RoundedInputField(
                    hintText: 'e-mail',
                    fieldheight: 42,
                    fieldwidth: 255,
                  ),
                  SizedBox(height: 16),
                  RoundedInputField(
                    hintText: 'пароль',
                    fieldheight: 42,
                    fieldwidth: 255,
                  ),
                  SizedBox(height: 53),
                  RoundedButtonPink(
                    text: "Войти",
                    press: () {},
                    buttonheight: 44,
                    buttonwidth: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
