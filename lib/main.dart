import 'package:bebual/screens/chat.dart';
import 'package:bebual/screens/login.dart';
import 'package:bebual/screens/registration.dart';
import 'package:bebual/screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Bebual());
}

class Bebual extends StatelessWidget {
  const Bebual({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.welcomeScreen,
      routes: {
        WelcomeScreen.welcomeScreen:(context)=>WelcomeScreen(),
        LoginScreen.loginScreen:(context)=>LoginScreen(),
        RegistrationScreen.registerScreen:(context)=>RegistrationScreen(),
        ChatScreen.chatScreen:(context)=>ChatScreen(),
      },
    );
  }
}


/**THIS IS ONE OF THE WAYS OF SETTING THE ROUTE FOR THE VARIOUS SCREENS */

      //home property can't be used wen using the initialroute property
      /** initialRoute: 'welcome_screen',
       routes: {
         'welcome_screen':(context)=>WelcomeScreen(),
         'login_screen':(context)=>LoginScreen(),
         'register_screen':(context)=>RegistrationScreen(),
         'chat_screen':(context)=>ChatScreen(),
      },*/