import 'package:cric8hemant/api/authapi.dart';
import 'package:cric8hemant/const/user_cred.dart';
import 'package:cric8hemant/util/const.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage(
                  'assets/login.png',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage("assets/Loginarrow.png")),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  RotatedBox(
                    quarterTurns: 2,
                    child: Image(image: AssetImage("assets/Loginarrow.png")),
                  ),
                ],
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.01,
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          labelText: "Email or Mobile"),
                      controller: usernameController,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          labelText: "password"),
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/forget");
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Forgot password",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 38,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff44C894),
                        ),
                        onPressed: () async {
                          if (usernameController.text == "" ||
                              passwordController.text == "") {
                            Fluttertoast.showToast(
                                msg: 'Enter Username and password');
                            return;
                          }
                          AuthApi _api = AuthApi();
                          Map data = await _api.doLogin(
                            username: usernameController.text,
                            password: passwordController.text,
                          );
                          // print(data['status'].runtimeType);
                          if (data['status'] == 200) {
                            userCred.addUserId(
                                data['user_info']['user_id'].toString());
                            Fluttertoast.showToast(msg: data['message']);
                            Navigator.pushReplacementNamed(context, "/pincode");
                          } else {
                            Fluttertoast.showToast(msg: data['message']);
                            return;
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "semibold",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Create an account",
                          style: TextStyle(
                            fontFamily: "semibold",
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signin");
                            },
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                color: Color(0xff44C894),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
