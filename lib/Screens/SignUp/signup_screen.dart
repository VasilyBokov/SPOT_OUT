import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spout_out/Screens/SignUp/components/body.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
    ));
    return Scaffold(
      body: Body(),
    );
  }
}
