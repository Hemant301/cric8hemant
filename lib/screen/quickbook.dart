import 'package:cric8hemant/screen/referearn.dart';
import 'package:date_time_picker/date_time_picker.dart';
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
            Container(
              height: 45,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DateTimePicker(
                    decoration: InputDecoration(border: InputBorder.none),
                    // controller: _monopen,
                    type: DateTimePickerType.time,
                    style: TextStyle(fontSize: 16),
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                    },
                    onSaved: (val) => print(val),
                  ),
                ),
              ),
            ),
            // Text(
            //   "   Book",
            //   style: TextStyle(fontSize: 35),
            // )
          ]))
    ])));
  }
}
