import "package:flutter/material.dart";

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Stack(
                    children: const [
                      Align(
                          alignment: Alignment.topRight,
                          child: Image(image: AssetImage('assets/meetbg.png'))),
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
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "  Book &",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "   Venues",
                      style: TextStyle(fontSize: 25),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("search venues here"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Find & Book venues nearby",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),

                Row(
                  children: [
                    contaItem(
                      icon: Icons.discount,
                      title: "Favorites",
                    ),
                    contaItem(
                      icon: Icons.favorite,
                      title: "Offer",
                    ),
                    contaItem(
                      icon: Icons.quick_contacts_dialer,
                      title: "Quick Book",
                    )
                  ],
                ),
                // const Padding(
                //   padding: EdgeInsets.only(left: 8),
                //   child: Align(
                //       alignment: Alignment.topLeft,
                //       child: Text(
                //         "Events",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, fontSize: 18),
                //       )),
                // ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 109, 34, 34),
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Colors.grey.withOpacity(0.4),
                                      //     spreadRadius: 1,
                                      //     blurRadius: 1,
                                      //     offset: Offset(1, 3), // changes position of shadow
                                      //   ),
                                      // ],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 251, 251, 251),
                                          width: 5)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width /
                                          3.5,
                                      child: Text(
                                        "Dikshant Global Cricket Ground",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Row(
                                    children: [
                                      Icon(Icons.location_history_rounded),
                                      Text("Zirakpur"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text("0.0(0 reating)"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 5, 3, 3),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.grey.withOpacity(0.4),
                                    //     spreadRadius: 1,
                                    //     blurRadius: 1,
                                    //     offset: Offset(1, 3), // changes position of shadow
                                    //   ),
                                    // ],
                                    borderRadius: BorderRadius.circular(20),
                                    // border: Border.all(
                                    //     color: Color.fromARGB(
                                    //         255, 251, 251, 251),
                                    //     width: 5)
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Center(
                                        child: Text(
                                          "View",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                      //  Image.network(
                                      //   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
                                      //   fit: BoxFit.cover,
                                      // ),
                                      ),
                                ),
                              ],
                            ),
                          ]),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class contaItem extends StatelessWidget {
  contaItem({Key? key, this.icon, this.title}) : super(key: key);
  String? title;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                icon!,
                // Icons.discount,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                title!,
                // "favortes",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
