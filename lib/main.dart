import 'package:bebual/screens/welcome.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(Bebual());
}

class Bebual extends StatelessWidget {
  const Bebual({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
