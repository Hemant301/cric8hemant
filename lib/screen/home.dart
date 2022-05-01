import 'package:cric8hemant/const/user_cred.dart';
import 'package:cric8hemant/util/const.dart';
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
                child: InkWell(
                  onTap: () {},
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              shape: BoxShape.circle),
                          child: IconButton(
                              iconSize: 25,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person_rounded,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Hey ",
                              style: TextStyle(
                                  fontFamily: "semibold",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          // Text(
                          //   "Warming up",
                          //   style: TextStyle(color: Colors.white),
                          // )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      const SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                      userCred.isUserLogin()
                          ? InkWell(
                              onTap: () {
                                // logout();
                                userCred.logoutUser();
                                Navigator.pushReplacementNamed(
                                    context, "/login");
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
                          : InkWell(
                              onTap: () {
                                // logout();
                                // userCred.logoutUser();
                                // Navigator.pushReplacementNamed(context, "/login");
                              },
                              child: Row(
                                children: const [
                                  Text(
                                    "Login !!",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  // SizedBox(
                                  //   width: 8,
                                  // ),
                                  // Icon(
                                  //   Icons.login,
                                  //   color: Colors.white,
                                  // ),
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
              width: MediaQuery.of(context).size.width,
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
                        padding: const EdgeInsets.only(
                            left: 4.0, right: 4.0, top: 16, bottom: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Cont(
                              title: "My",
                              title1: "calender",
                              icon: Icons.calendar_month_sharp,
                            ),
                            Cont(
                              title: "Create",
                              title1: "Activity",
                              icon: Icons.book_online_outlined,
                            ),
                            Cont(
                              title: "Quick",
                              title1: "Book",
                              icon: Icons.abc_outlined,
                            ),
                            Cont(
                              title: "Favourite",
                              title1: "Venue",
                              icon: Icons.favorite,
                            )
                            // Slid(
                            //   title: "My Calender",
                            //   icon: Icons.calendar_month,
                            // ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Cont(
                              title1: "Groups",
                              icon: Icons.groups_sharp,
                            ),
                            Cont(
                              title: 'Leader',
                              title1: "Board",
                              icon: Icons.stacked_bar_chart_rounded,
                            ),
                            Cont(
                              title1: "Offers",
                              icon: Icons.discount_outlined,
                            ),
                            Cont(
                              title: 'Refer',
                              title1: "& Earn",
                              icon: Icons.share,
                              onTap: () {
                                Navigator.pushNamed(context, '/referearn');
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                width: double.maxFinite,
                // height: MediaQuery.of(context).size.height * 0.37,
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
                                        fontFamily: "sans",
                                        // fontWeight: FontWeight.bold,
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
          ),
        ],
      ),
    ));
  }
}

// class Slid extends StatelessWidget {
//   Slid({Key? key, this.title, this.icon, this.onPressed}) : super(key: key);
//   String? title;
//   IconData? icon;
//   Function()? onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       // width: MediaQuery.of(context).size.width * 0.29,
//       child: ElevatedButton(
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all(Colors.black),
//             shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 side: const BorderSide(color: Colors.white))),
//           ),
//           onPressed: onPressed,
//           child: Row(
//             children: const [
//               Icon(
//                 Icons.calendar_today_sharp,
//                 size: 10,
//               ),
//               SizedBox(
//                 width: 4,
//               ),
//               Text(
//                 title,
//                 style: TextStyle(fontSize: 10,)
//               )
//             ],
//           )),
//     );
//   }
// }
class Cont extends StatelessWidget {
  Cont({Key? key, this.icon, this.title = "", this.title1 = "", this.onTap})
      : super(key: key);
  String title;
  IconData? icon;
  String title1;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
            // width: 70,
            padding: EdgeInsets.all(5),
            width: 75,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Icon(icon!, size: 15, color: Colors.white),
                SizedBox(
                  width: 4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(fontSize: 8, color: Colors.white)),
                    Text(title1,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
