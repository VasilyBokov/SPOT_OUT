import 'package:flutter/material.dart';
import 'package:spout_out/Screens/Login/components/background.dart';
import 'package:spout_out/components/rounded_buttons.dart';
import 'package:spout_out/components/rounded_input_fields.dart';
import 'package:spout_out/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                "Рады тебя видеть!",
                style: kHeadlingTextStyleBlack1,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: 'Логин/email',
            ),
            RoundedInputField(
              hintText: 'Пароль',
            ),
            RoundedButtonPink(
              text: "Войти",
              press: () {},
              buttonheight: 0.075,
              buttonwidth: 0.55,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "Нет аккаунта?",
              style: kParagraphTextStyleGrey3,
            )
          ],
        ),
      ),
    );
  }
}
