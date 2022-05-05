import 'package:cric8hemant/bloc/homebloc.dart';
import 'package:cric8hemant/const/user_cred.dart';
import 'package:cric8hemant/modal/homemodal.dart';
import "package:flutter/material.dart";

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    homeBloc.fetchVenue();
    return StreamBuilder<VenueModal>(
        stream: homeBloc.getHomeSlider.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          return SafeArea(
              child: Scaffold(
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Image(
                                  image: AssetImage(
                                    'assets/meetbg.png',
                                  ),
                                )),
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
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "  Book &",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40),
                                    ),
                                  ),
                                  const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "   Venues",
                                        style: TextStyle(fontSize: 35),
                                      )),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.black, width: 2)),
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
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                        onTap: () {
                                          if (userCred.isUserLogin()) {
                                            Navigator.pushNamed(
                                                context, "/quickbook");
                                          } else {
                                            Navigator.pushNamed(
                                                context, "/login");
                                          }
                                        },
                                        icon: Icons.quick_contacts_dialer,
                                        title: "Quick Book",
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
                          children: List.generate(
                              snapshot.data!.data!.venue.length,
                              (index) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: EdgeInsets.all(8),
                                      width: MediaQuery.of(context).size.width -
                                          20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              255, 171, 241, 207)),
                                      child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 109, 34, 34),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 251, 251, 251),
                                                      width: 5)),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.network(
                                                  snapshot.data!.data!
                                                      .venue[index].venue_img!,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              3,
                                                      child: Text(
                                                        snapshot
                                                            .data!
                                                            .data!
                                                            .venue[index]
                                                            .venue_name!,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .location_history_rounded),
                                                      Text(snapshot
                                                          .data!
                                                          .data!
                                                          .venue[index]
                                                          .venue_city!),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Color.fromARGB(
                                                            255, 255, 230, 0),
                                                      ),
                                                      Text(
                                                        "0.0(0 reating)",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[600]),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // SizedBox(
                                            //   width: 5,
                                            // ),
                                            Container(
                                              // padding: EdgeInsets.all(15),
                                              height: 90,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 5, 3, 3),
                                                // boxShadow: [
                                                //   BoxShadow(
                                                //     color: Colors.grey.withOpacity(0.4),
                                                //     spreadRadius: 1,
                                                //     blurRadius: 1,
                                                //     offset: Offset(1, 3), // changes position of shadow
                                                //   ),
                                                // ],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                // border: Border.all(
                                                //     color: Color.fromARGB(
                                                //         255, 251, 251, 251),
                                                //     width: 5)
                                              ),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Center(
                                                    child: Text(
                                                      "View",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                  //  Image.network(
                                                  //   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
                                                  //   fit: BoxFit.cover,
                                                  // ),
                                                  ),
                                            ),
                                          ]),
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
        });
  }
}

class contaItem extends StatelessWidget {
  contaItem({Key? key, this.icon, this.title, this.onTap}) : super(key: key);
  String? title;
  IconData? icon;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
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
      ),
    );
  }
}
