import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          const Image(
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/homebg.png')),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // const Padding(
                    //   padding: EdgeInsets.only(left: 8),
                    //   child: Text("Crick8inNet"),
                    // ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.share_location,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Card(
                  color: Colors.black,
                  child: Row(
                    children: [
                      IconButton(
                          iconSize: 50,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_rounded,
                            color: Colors.white,
                          )),
                      Column(
                        children: const [
                          Text(
                            "Hey there",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "Warming up",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // logout();
                          Navigator.pushNamed(context, "/PopUp");
                        },
                        child: Row(
                          children: const [
                            Text(
                              "Logout",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 2 + 15,
              child: Card(
                  color: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Wrap(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.29,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.calendar_today_sharp,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "My Calendar",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.22,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.note_alt_sharp,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Activity",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.20,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.lock_clock_sharp,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Book",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.20,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.favorite,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "venues",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.20,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.groups_sharp,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Groups",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.20,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.stacked_bar_chart_rounded,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Board",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.20,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.local_offer_rounded,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Offers",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.20,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.white))),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.choose);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.share,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Refer and earn",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Card(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            //
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xffEAEAEA),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo.png'),
                                  ),
                                ),
                                Text(
                                  "WITH PLAYERS NEARBY",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 25,
                                  child: VerticalDivider(
                                    thickness: 2,
                                    indent: 5,
                                    endIndent: 0,
                                    width: 20,
                                    color: Color.fromARGB(255, 48, 48, 48),
                                  ),
                                ),
                                Text(
                                  "MEET",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            //
                          },
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffEAEAEA),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo.png'),
                                  ),
                                ),
                                Text(
                                  "FROM PROFESSIONALS",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 25,
                                  child: VerticalDivider(
                                    thickness: 2,
                                    indent: 5,
                                    endIndent: 0,
                                    width: 20,
                                    color: Color.fromARGB(255, 48, 48, 48),
                                  ),
                                ),
                                Text(
                                  "LEARN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
