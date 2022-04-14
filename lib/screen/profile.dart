import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 43, 41, 41),
        body: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                // ignore: prefer_const_constructors
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/login.png",
                          height: 80,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 41, 41),
                              // boxShadow: [
                              //   // BoxShadow(
                              //   //   color: Colors.grey.withOpacity(0.4),
                              //   //   spreadRadius: 1,
                              //   //   blurRadius: 1,
                              //   //   offset:
                              //   //       Offset(1, 3), // changes position of shadow
                              //   // ),
                              // ],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "My Profile",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 15, 227, 227),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "My Team",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 160, 163, 163),
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 130,
                    width: 130,
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
                            color: Color.fromARGB(255, 251, 251, 251),
                            width: 5)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Click now",
                    style: TextStyle(
                        color: Color.fromARGB(255, 15, 227, 227),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Zara Kumari",
                    style: TextStyle(
                        color: Color.fromARGB(255, 247, 250, 250),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "19 year old",
                    style: TextStyle(
                        color: Color.fromARGB(255, 182, 184, 184),
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Textfild(
                    hints: "First Name",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textfild(
                    hints: "Middel Name",
                    // lable: "Middle Name",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textfild(
                    hints: "Last Name",
                    // lable: "Last Name",
                  ),
                  Textfild(
                    hints: "Email Address",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textfild(
                    hints: "Residential Address",
                    // lable: "Middle Name",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textfild(
                    hints: "City pincode",
                    // lable: "Last Name",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textfild(
                    hints: "Mobile number",
                    // lable: "Last Name",
                    suffix: Text(
                      "Verify",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 227, 227),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textfild(
                    hints: "Cricheros ID",
                    // lable: "Last Name",
                    suffix: Text(
                      "Verify",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 227, 227),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textfild(
                    hints: "Refred by",
                    // lable: "Last Name",
                    suffix: Text(
                      "Verify",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 227, 227),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "or",
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 244, 244),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Textfild(
                    hints: "Source",
                    // lable: "Last Name",
                    // suffix: Text(
                    //   "Verify",
                    //   style: TextStyle(
                    //       color: Color.fromARGB(255, 15, 227, 227),
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 16),
                    // ),
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Textfild extends StatelessWidget {
  Textfild({Key? key, this.lable, this.hints, this.suffix}) : super(key: key);
  String? lable;
  String? hints;
  Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              // border: new OutlineInputBorder(
              //     borderSide: new BorderSide(color: Colors.white)),
              // border: InputBorder(color: Colors.white,width: 1),
              // labelText: lable,
              // labelStyle: TextStyle(
              //     color: Color.fromARGB(255, 182, 184, 184),
              //     // fontWeight: FontWeight.bold,
              //     fontSize: 14),
              hintText: hints,
              suffix: suffix,
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 182, 184, 184),
                  // fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Divider(
            height: 5,
            thickness: 3,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
