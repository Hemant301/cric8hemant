import 'package:cric8hemant/auth/homeapi.dart';
import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Setpassword extends StatefulWidget {
  const Setpassword({Key? key}) : super(key: key);

  @override
  State<Setpassword> createState() => _SetpasswordState();
}

class _SetpasswordState extends State<Setpassword> {
  TextEditingController passController = TextEditingController();
  TextEditingController conpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Map rcvd = ModalRoute.of(context)!.settings.arguments as Map;
    print(rcvd['mobile']);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 25),
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
                  controller: passController,
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
                  controller: conpassController,
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
                  onTap: () async {
                    if (passController.text == "" ||
                        conpassController.text == "") {
                      Fluttertoast.showToast(msg: 'Enter password');
                      return;
                    } else if (passController.text != conpassController.text) {
                      Fluttertoast.showToast(msg: 'Password do not match');

                      return;
                    }
                    HomeApi _api = HomeApi();
                    Map data = await _api.resetpassword(
                        rcvd['mobile'], passController.text);
                    print(data);
                    if (data['status'] == 200) {
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                      Fluttertoast.showToast(msg: data['message']);
                    } else {
                      Fluttertoast.showToast(msg: 'Something went wrong');
                    }
                    // Navigator.pushNamed(context, "/setpassword");
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
      ),
    );
  }
}
