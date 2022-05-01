import 'package:cric8hemant/auth/homeapi.dart';
import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sms_autofill/sms_autofill.dart';

class ForgetOtp extends StatefulWidget {
  const ForgetOtp({Key? key}) : super(key: key);

  @override
  State<ForgetOtp> createState() => _ForgetOtpState();
}

class _ForgetOtpState extends State<ForgetOtp> {
  TextEditingController otpCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Map rcvd = ModalRoute.of(context)!.settings.arguments as Map;
    print(rcvd['mobile']);
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
              child: Container(
                child: PinInputTextField(
                  controller: otpCon,
                  pinLength: 4,
                  cursor: Cursor(
                    width: 2,
                    height: 30,
                    color: Colors.grey,
                    enabled: true,
                  ),
                  decoration: UnderlineDecoration(
                    colorBuilder: FixedColorBuilder(Colors.grey),
                    lineHeight: 1.0,
                    textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: InkWell(
                onTap: () async {
                  if (otpCon.text == "" || otpCon == null) {
                    Fluttertoast.showToast(msg: 'Enter OTP');
                    return;
                  }
                  HomeApi _api = HomeApi();
                  Map data = await _api.verifyOtp(rcvd['mobile'], otpCon.text);
                  print(data);
                  if (data['status'] == 200) {
                    Navigator.pushNamed(context, "/setpassword",
                        arguments: {'mobile': rcvd['mobile']});
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
