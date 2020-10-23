import 'package:flutter/material.dart';
import 'package:spout_out/Screens/Login/login_screen.dart';
import 'package:spout_out/Screens/SignUp/signup_screen.dart';
import 'package:spout_out/components/clickable_text.dart';
import 'package:spout_out/components/rounded_buttons.dart';
import 'package:spout_out/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size, как я понимаю, размер всего экрана
    //почитать подробнее
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          //устанавливает отступы
          padding: const EdgeInsets.fromLTRB(0, 448, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: size.height * 0.05),
              // в фигме размер экрана 640*360
              RoundedButtonPink(
                text: "Зарегистрироваться",
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
                buttonheight: 44,
                buttonwidth: 240,
              ),
              SizedBox(height: 16),
              RoundedButtonBlack(
                text: "Войти",
                buttonheight: 44,
                buttonwidth: 240,
                press: () {
                  //Просто переходит на другой экран
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
              SizedBox(height: 50),
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
