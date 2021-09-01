import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bebual/constants.dart';
import 'package:bebual/screens/login.dart';
import 'package:bebual/screens/registration.dart';
import 'package:flutter/material.dart';
import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String welcomeScreen = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = ColorTween(begin: Colors.grey[300], end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset(
                      'images/logo.png',
                      width: 80.0,
                    ),
                    height: 120.0,
                  ),
                ),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText('Bebual', textStyle: kAnimatedText),
                    RotateAnimatedText('Fast', textStyle: kAnimatedText),
                    RotateAnimatedText('Different', textStyle: kAnimatedText),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            RoundedButton(
              title: 'Login',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.loginScreen);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.registerScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
