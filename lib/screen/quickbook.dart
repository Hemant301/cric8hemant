import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';

class QuickBook extends StatelessWidget {
  const QuickBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Stack(children: [
              Positioned(
                right: 0,
                top: 0,
                child: Image(
                  image: AssetImage(
                    'assets/meetbg.png',
                  ),
                  // height: 200,
                  // width: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BackButtonss(),
                      SizedBox(
                        height: 40,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "  Quick",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                      ),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "   Book",
                            style: TextStyle(fontSize: 35),
                          )),
                    ],
                  ))
            ]),
            // Text(
            //   "   Book",
            //   style: TextStyle(fontSize: 35),
            // )
          ]))
    ])));
  }
}
