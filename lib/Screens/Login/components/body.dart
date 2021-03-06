import 'package:flutter/material.dart';
import 'package:spout_out/Screens/Login/components/background.dart';
import 'package:spout_out/Screens/Login/forget_password_screen.dart';
import 'package:spout_out/Screens/Login/login_screen.dart';
import 'package:spout_out/Screens/SignUp/signup_screen.dart';
import 'package:spout_out/components/clickable_text.dart';
import 'package:spout_out/components/rounded_buttons.dart';
import 'package:spout_out/components/rounded_input_fields.dart';
import 'package:spout_out/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 32),
            RoundedInputField(
              hintText: 'логин/e-mail',
              fieldheight: 42,
              fieldwidth: 255,
            ),
            SizedBox(height: 16),
            RoundedInputField(
              hintText: 'пароль',
              fieldheight: 42,
              fieldwidth: 255,
            ),
            SizedBox(height: 24),
            RoundedButtonPink(
              text: "Войти",
              press: () {},
              buttonheight: 44,
              buttonwidth: 216,
            ),
            SizedBox(height: 40),
            Text(
              "Нет аккаунта?",
              style: kParagraphTextStyleGrey3,
            ),
            SizedBox(height: 8),
            ClickableText(
              text: "Зарегистрироваться",
              textStyle: kParagraphTextStyleBlue3,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 42),
            ClickableText(
              text: "Забыли пароль?",
              textStyle: kHeadlingTextStyleGrey2,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgetPasswordScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
