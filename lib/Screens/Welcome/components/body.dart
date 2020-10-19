import 'package:flutter/material.dart';
import 'package:spout_out/Screens/Login/login_screen.dart';
import 'package:spout_out/components/clickable_text.dart';
import 'package:spout_out/components/rounded_buttons.dart';
import 'package:spout_out/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 448, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: size.height * 0.05),
              RoundedButtonPink(
                text: "Зарегистрироваться",
                press: () {},
                buttonheight: 0.075,
                buttonwidth: 0.67,
              ),
              RoundedButtonBlack(
                text: "Войти",
                buttonheight: 0.075,
                buttonwidth: 0.67,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: size.height * 0.078),
              ClickableText(
                text: "Пропустить",
                textStyle: kHeadlingTextStyleGrey2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
