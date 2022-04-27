import 'package:cric8hemant/util/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseAuth extends StatelessWidget {
  const ChooseAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const SizedBox(
            child: const Center(
          child: Image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage("assets/signupbg.png")),
        )),
        Positioned(
          top: 40,
          right: 0,
          left: 0,
          child: const SizedBox(
            width: 150,
            height: 100,
            child: const Align(
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage("assets/logo.png")),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                      spreadRadius: 0.0,
                      offset: Offset(5.0, 5.0))
                ]),
                child: Card(
                  color: primaryLight,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(15)),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        children: [
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                height: 80,
                                width: 200,
                                image: AssetImage('assets/mycricket.png'),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 40,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/signin");
                                },
                                child: const Text(
                                  "Let's get started",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 61, 57, 57)),
                                )),
                          ),
                        ],
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already a Plaholic? ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signin");
                      },
                      child: const Text(
                        "Signin",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 40,
                  width: 150,
                  color: Colors.white,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/boot");
                      },
                      child: const Text(
                        "Skip for Now",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
