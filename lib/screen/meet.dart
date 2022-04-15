import 'package:cric8hemant/screen/activebutton.dart';
import 'package:cric8hemant/screen/mettingcart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              const Align(
                  alignment: Alignment.topRight,
                  child: Image(image: AssetImage('assets/meetbg.png'))),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "  Meet &",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "   Activities",
                        style: TextStyle(fontSize: 25),
                      )),
                  Row(
                    children: [
                      topLeftButton(context),
                      const Spacer(),
                      CupertinoButton(
                          padding: const EdgeInsets.all(8),
                          color: Colors.black,
                          child: const Text(
                            "Upcomming",
                            style: TextStyle(color: Colors.green),
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CupertinoButton(
                            padding: const EdgeInsets.all(8),
                            color: Colors.grey,
                            child: const Text(
                              "Past",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        " *Create Activity",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      chooseButton(
                          context,
                          "filter ",
                          const Icon(
                            Icons.filter_list,
                            color: Colors.black,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: chooseButton(
                            context,
                            "Sort ",
                            const Icon(
                              Icons.sort_outlined,
                              color: Colors.black,
                            )),
                      )
                    ],
                  ),
                  meetingCard(context, const Text("Warming Up")),
                  meetingCard(
                      context,
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.yellow,
                          child: const Text(
                            "  Your booking",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "That's all you have in your calendar",
                          style: TextStyle(color: Colors.grey),
                        )),
                  ),
                  activityButton(context)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget topLeftButton(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.4,
    child: Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(20.0))),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconButton(
                const Icon(
                  Icons.calendar_today,
                  color: Colors.green,
                  size: 35,
                ),
                "Calendar"),
            const SizedBox(
              width: 12,
            ),
            iconButton(
                const Icon(
                  Icons.developer_board_rounded,
                  color: Colors.green,
                  size: 35,
                ),
                "My Scorecard")
          ],
        ),
      ),
    ),
  );
}

Widget iconButton(Widget _icon, String title) {
  return GestureDetector(
    onTap: () {
      //
    },
    child: Column(
      children: [
        _icon,
        Text(
          title,
          style: const TextStyle(color: Colors.green, fontSize: 8),
        )
      ],
    ),
  );
}

Widget chooseButton(context, String name, Widget iconname) {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Colors.black))),
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/choose");
      },
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          iconname
        ],
      ));
}
