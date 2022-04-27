import 'package:cric8hemant/auth/login.dart';
import 'package:cric8hemant/auth/signin.dart';
import 'package:cric8hemant/screen/boot.dart';
import 'package:cric8hemant/screen/bottombar.dart';
import 'package:cric8hemant/screen/choselogin.dart';
import 'package:cric8hemant/screen/home.dart';
import 'package:cric8hemant/screen/popup.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/splashascreen",
      routes: {
        "/splashascreen": (context) => SplahScreen(),
        "/choselogin": (context) => ChooseAuth(),
        "/signin": (context) => Signup(),
        "/login": (context) => LoginScreen(),
        "/home": (context) => HomePage(),
        "/bottombar": (context) => Nav(),
        "/boot": (context) => Boot(),
        "/PopUp": (context) => PopUp(),
      },
    );
  }
}
