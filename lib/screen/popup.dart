import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width - 40,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            // popup2.png
            Image.asset(
              "assets/popup2.png",
              height: 200,
              width: MediaQuery.of(context).size.width - 40,
            ),
            Text(
              "Comming Soon !!",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "Stay Tune",
              style: TextStyle(
                  color: Color.fromARGB(255, 149, 155, 155),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Image.asset(
              "assets/popup1.png",
              // height: 200,
              width: MediaQuery.of(context).size.width - 40,
            )
          ]),
        )
      ],
    ));
  }
}
