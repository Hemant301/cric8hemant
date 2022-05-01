import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';

class Setpassword extends StatefulWidget {
  const Setpassword({Key? key}) : super(key: key);

  @override
  State<Setpassword> createState() => _SetpasswordState();
}

class _SetpasswordState extends State<Setpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 150,
                ),
                Positioned(
                  right: 0,
                  child: Image.asset("assets/signupTop.png"),
                  height: 150,
                  width: 150,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: BackButtonss(),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Forgot",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Password",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  )),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: "New Password"),
                // controller: usernameController,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration:
                    const InputDecoration(labelText: "Confirm Password"),
                // controller: usernameController,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: InkWell(
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
                              Image.asset('assets/party 1.png'),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '''PASSWORD 
CHANGED !''',
                                style: TextStyle(
                                    color: Color(0xff74C69D),
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xff74C69D),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    'Login Now',
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
                        )
                      ],
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 50,
                    color: Color(0xff44C894),
                    child: Center(
                      child: Text("Set Password",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 251, 251, 251),
                            // fontWeight: FontWeight.bold
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
