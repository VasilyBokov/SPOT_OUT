import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/body.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
    ));
    return Scaffold(
      body: Body(),
    );
  }
}
