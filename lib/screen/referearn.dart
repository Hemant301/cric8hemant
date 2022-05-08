import 'package:flutter/material.dart';

class Referearn extends StatefulWidget {
  const Referearn({Key? key}) : super(key: key);

  @override
  State<Referearn> createState() => _ReferearnState();
}

class _ReferearnState extends State<Referearn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          const Align(
              alignment: Alignment.topRight,
              child: Image(image: AssetImage('assets/meetbg.png'))),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: BackButtonss(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "  Refer &",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "   Earn",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      actions: <Widget>[
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset('assets/sad.png'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Invite your friend',
                                  style: TextStyle(
                                      // color: Color(0xff74C69D),
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Full Name',
                                      prefixIcon: Icon(Icons.person)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Email',
                                      prefixIcon: Icon(Icons.email)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Phone Number',
                                      prefixIcon: Icon(Icons.phone)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextFormField(
                                    maxLength: 8,
                                    decoration: InputDecoration(
                                        hintText: 'Write a message to a friend',
                                        border: InputBorder.none),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        actions: <Widget>[
                                          Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Image.asset('assets/sad.png'),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'Congratulation',
                                                    style: TextStyle(
                                                        // color: Color(0xff74C69D),
                                                        fontSize: 28,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'We have successfully invited your friend for the match, see you calender for more details',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        height: 1,
                                                        fontSize: 15,
                                                        letterSpacing: 1.5),
                                                  ),
                                                  SizedBox(
                                                    height: 40,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 40,
                                                              vertical: 10),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff74C69D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: Text(
                                                        'Ok',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xff74C69D),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      'Invite Now',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Refer Now !!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Rewards',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Column(
                        children: List.generate(
                            15,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(
                                          children: [
                                            Text(
                                              '5',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text('Over')
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '5 over for 2000',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2,
                                            child: Text(
                                              'Get 5 over worth of Rs 250/- just for 2000 points',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (ctx) => AlertDialog(
                                              actions: <Widget>[
                                                Center(
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Image.asset(
                                                          'assets/sadv.png'),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        'OOPS!!',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff74C69D),
                                                            fontSize: 28,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Container(
                                                          width: 200,
                                                          child: Text(
                                                            'You dont have enough points to redeem this offer',
                                                            textAlign: TextAlign
                                                                .center,
                                                          )),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        'REFER TO EARN MORE POINTS',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 40,
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 40,
                                                                vertical: 10),
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xff74C69D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Text(
                                                          'Invite Now',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          decoration: BoxDecoration(
                                              color: Color(0xff74C69D),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            'Reedem',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  ),
                                )),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class BackButtonss extends StatelessWidget {
  const BackButtonss({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Color.fromARGB(255, 253, 253, 253),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          'Back',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
        ),
      ),
    );
  }
}
