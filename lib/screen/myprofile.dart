import 'package:cric8hemant/bloc/homebloc.dart';
import 'package:cric8hemant/modal/homemodal.dart';
import 'package:cric8hemant/screen/book.dart';
import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    homeBloc.getuserData();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)),
                            ))
                      ]),
                ),
                Positioned(top: 25, left: 20, child: BackButtonss())
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80")),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                        "Activites",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                        "(0 No Show",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                        "Activites",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                        "(0 No Show",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                        "Activites",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                        "(0 No Show",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              StreamBuilder<UserdetailModal>(
                  stream: homeBloc.getUserdetails.stream,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Container();
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        snapshot.data!.data!.name!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Text(
                          "No activites yet",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/profile");
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Center(
                          child: Icon(
                        Icons.edit,
                        size: 30,
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color.fromARGB(255, 142, 255, 232),
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  Image.asset(
                    "assets/injection.png",
                    height: 120,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vaccination Status",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "You have not updated your baccinatio yet!\nUpdate & improve gmae changes",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/profile");
                              },
                              child: const Text(
                                "Update Now",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/bookinghistory");
                },
                child: Text(
                  "Booking",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 120,
              // decoration:BoxDecoration()
              // )
            ]),
      ),
    );
  }
}
