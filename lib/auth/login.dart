import 'package:cric8hemant/util/const.dart';
import 'package:flutter/material.dart';

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
              const Image(image: AssetImage('assets/login.png')),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
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
                          labelText: "Username"),
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
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: primaryLight),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Create an account"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signin");
                            },
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                color: Colors.green,
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
