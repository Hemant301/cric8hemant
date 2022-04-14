import 'package:flutter/material.dart';

class SplahScreen extends StatelessWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, "/choselogin");
      });
    return Scaffold(
        body: Image(
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      image: AssetImage('assets/splash.png'),
    ));
  }
}
