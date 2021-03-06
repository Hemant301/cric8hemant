import 'package:cric8hemant/api/authapi.dart';
import 'package:cric8hemant/const/user_cred.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isLoading = false;

  //Controllers
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mobController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();
  final TextEditingController refralController = TextEditingController();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _form,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        backbutton(),
                        const Spacer(),
                        const Image(
                            width: 130,
                            height: 130,
                            image: AssetImage('assets/icons/signupTop.png'))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create an",
                        style: TextStyle(
                            fontFamily: "bolds",
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Account",
                          style: TextStyle(fontFamily: "bolds", fontSize: 30),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: firstNameController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              labelText: "Full Name"),
                        ),
                        // TextFormField(
                        //   controller: lastNameController,
                        //   decoration: const InputDecoration(
                        //       icon: Icon(
                        //         Icons.person,
                        //         color: Colors.black,
                        //       ),
                        //       labelText: "Last Name"),
                        // ),
                        // TextFormField(
                        //   controller: usernameController,
                        //   decoration: const InputDecoration(
                        //       icon: Icon(
                        //         Icons.person,
                        //         color: Colors.black,
                        //       ),
                        //       labelText: "User Name"),
                        // ),
                        // TextFormField(
                        //   keyboardType: TextInputType.phone,
                        //   controller: mobController,
                        //   decoration: const InputDecoration(
                        //       icon: Icon(
                        //         Icons.email,
                        //         color: Colors.black,
                        //       ),
                        //       labelText: "Mobile No."),
                        // ),
                        TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              labelText: "Email id"),
                        ),
                        TextFormField(
                          controller: cityController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.call,
                                color: Colors.black,
                              ),
                              labelText: "Mobile"),
                        ),
                        // TextFormField(
                        //   controller: stateController,
                        //   decoration: const InputDecoration(
                        //       icon: Icon(
                        //         Icons.location_on_outlined,
                        //         color: Colors.black,
                        //       ),
                        //       labelText: "State"),
                        // ),
                        // TextFormField(
                        //   keyboardType: TextInputType.phone,
                        //   controller: pincodeController,
                        //   decoration: const InputDecoration(
                        //       icon: Icon(
                        //         Icons.pin,
                        //         color: Colors.black,
                        //       ),
                        //       labelText: "Pin Code"),
                        // ),
                        TextFormField(
                          controller: refralController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              labelText: "Referral Code (optional)"),
                        ),
                        TextFormField(
                          controller: passwordController1,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              labelText: "create password"),
                        ),

                        TextFormField(
                          controller: passwordController2,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              labelText: "confirm password"),
                          validator: ((val) {
                            if (val!.isEmpty) {
                              return 'Empty';
                            }
                            if (val != passwordController1.text) {
                              return "Didn't Matcht";
                            } else {
                              return null;
                            }
                          }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.018),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 5, 170, 121)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)))),
                          onPressed: () async {
                            if (firstNameController.text == "" ||
                                emailController.text == "" ||
                                passwordController1.text == "" ||
                                passwordController2.text == "") {
                              Fluttertoast.showToast(msg: 'Enter all form');
                              return;
                            } else if (passwordController1.text !=
                                passwordController2.text) {
                              Fluttertoast.showToast(
                                  msg: 'Password do not match');
                              return;
                            }
                            AuthApi _api = AuthApi();
                            Map data = await _api.doSignup(
                              name: firstNameController.text,
                              last_name: lastNameController.text,
                              mob_no: mobController.text,
                              email: emailController.text,
                              city: cityController.text,
                              pincode: pincodeController.text,
                              state: stateController.text,
                              refral: refralController.text,
                              password: passwordController1.text,
                            );
                            print(data);
                            if (data['status'] == 200) {
                              userCred.addUserId(
                                  data['user_info']['user_id'].toString());
                              Navigator.pushReplacementNamed(
                                  context, "/pincode");
                              Fluttertoast.showToast(msg: data['message']);
                            } else {
                              Fluttertoast.showToast(
                                  msg: 'Something went worng');
                              return;
                            }

                            // Navigator.pushNamed(context, Routes.home);
                          },
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  // const Spacer(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 170, 121)),
                          ))
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class backbutton extends StatefulWidget {
  const backbutton({Key? key}) : super(key: key);

  @override
  State<backbutton> createState() => _backbuttonState();
}

class _backbuttonState extends State<backbutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: Colors.black, width: 4))),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          "     Back    ",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ));
  }
}
