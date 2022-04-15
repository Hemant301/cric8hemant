import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
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
                                4,
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
        ],
      )),
    );
  }
}

Widget resources(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Card(
        color: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40.0))),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Resources",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            tile(context),
            tile(context),
            tile(context),
          ],
        ),
      ),
    ),
  );
}

Widget tile(context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, "/resource");
    },
    child: ListTile(
      leading: const Image(image: AssetImage("assets/ball.png")),
      title: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Altamash Husain",
          style: TextStyle(color: Colors.white),
        ),
      ),
      subtitle: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.watch_later_outlined),
              Text(
                "15 min ago",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const Text(
            "Lorem ipsum dolor sit amet",
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            "Lorem ipsum dolor sit",
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            "Lorem ipsum",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}