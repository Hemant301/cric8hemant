import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        alignment: Alignment.center,
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
                  "  Learn &",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "   Blogs",
                    style: TextStyle(fontSize: 25),
                  )),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Card(
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Trainer Sessions ",
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "|    Ask Community",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
          // Column(
          //   children:List.generate(4, (index) => )

          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Card(
                      color: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40.0))),
                      child: Column(children: [
                        Text(
                          "Resources",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Column(
                            children: List.generate(
                                3,
                                (index) => SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Row(
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/ball.png"),
                                                  height: 80,
                                                  width: 80,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Lorem ipsum dolor sit amet",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      "Altamash Husain",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      "15 min ago",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )))
                      ])))),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.7),
          ),
          Positioned(
            top: 180,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 380,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // popup2.png
                        Image.asset(
                          "assets/popup2.png",
                          height: 200,
                          width: MediaQuery.of(context).size.width - 80,
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
                        SizedBox(
                          height: 120,
                        )
                      ]),
                ),
                Positioned(
                  bottom: -2,
                  left: -20,
                  // right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Image.asset(
                      "assets/popup1.png",
                      fit: BoxFit.fill,
                      // height: 200,
                      // width: MediaQuery.of(context).size.width - 40,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
