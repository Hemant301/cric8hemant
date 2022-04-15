import 'package:cric8hemant/util/const.dart';
import 'package:flutter/material.dart';

Widget meetingCard(context, Widget type) {
  return GestureDetector(
    onTap: () {
      //
    },
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.98,
      height: MediaQuery.of(context).size.height * 0.18,
      child: Card(
          color: primaryLight,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Image(
                      width: 50,
                      height: 60,
                      image: AssetImage('assets/splash.png'),
                    ),
                    Text("Zara"),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "Karma",
                        style: TextStyle(fontSize: 10),
                      ),
                      TextSpan(
                        text: "75",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )
                    ])),
                    Text(
                      "Beginner",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        type,
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.watch_later_outlined,
                          size: 12,
                        ),
                        const Text(
                          "Tomorrow, Night",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            ),
                            Text(
                              "01",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "Going",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.location_on_outlined,
                          size: 10,
                        ),
                        const Text(
                          "6 B Dhamakar Park, L B S Marg.",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context,"/activityInfo");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 56,
                    height: 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: Colors.black,
                      child: const Center(
                          child: Text(
                        "View",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                    ),
                  ),
                ),
              )
            ],
          )),
    ),
  );
}
