import 'package:cric8hemant/auth/homeapi.dart';
import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController mobileController = TextEditingController();
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
                controller: mobileController,
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    labelText: "Mobile"),
                // controller: usernameController,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: InkWell(
                onTap: () async {
                  if (mobileController.text == "") {
                    Fluttertoast.showToast(msg: 'Enter phone number');
                    return;
                  }
                  HomeApi _api = HomeApi();
                  Map data = await _api.forgotPass(mobileController.text);
                  print(data);
                  if (data['status'] == 200) {
                    Navigator.pushNamed(context, "/forgetotp",
                        arguments: {'mobile': mobileController.text});
                    Fluttertoast.showToast(msg: 'Otp Sent');
                  } else {
                    Fluttertoast.showToast(msg: 'Something went wrong');
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 50,
                    color: Color(0xff44C894),
                    child: Center(
                      child: Text("Get OTP",
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
