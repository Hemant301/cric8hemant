import 'package:cric8hemant/auth/login.dart';
import 'package:cric8hemant/auth/signin.dart';
import 'package:cric8hemant/screen/choselogin.dart';
import 'package:cric8hemant/screen/splashascreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/splashascreen",
      routes: {
        "/splashascreen": (context) => SplahScreen(),
        "/choselogin": (context) => ChooseAuth(),
        "/signin": (context) => Signup(),
        "/login": (context) => LoginScreen(),
        // "/choselogin": (context) => ChooseAuth(),
        // "/choselogin": (context) => ChooseAuth(),
        // "/choselogin": (context) => ChooseAuth(),
      },
    );
  }
}
