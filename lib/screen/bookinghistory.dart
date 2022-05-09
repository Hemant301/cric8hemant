import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      const Align(
          alignment: Alignment.topRight,
          child: Image(image: AssetImage('assets/meetbg.png'))),
      Column(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonss(),
              // StreamBuilder<WalletModal>(
              //     stream: homeBloc.getWallet.stream,
              //     builder: (context, snapshot) {
              //       if (!snapshot.hasData) return Container();
              //       return Container(
              //         padding: EdgeInsets.symmetric(
              //             horizontal: 30, vertical: 10),
              //         decoration: BoxDecoration(
              //             border:
              //                 Border.all(color: Colors.black, width: 4),
              //             color: Color.fromARGB(255, 253, 253, 253),
              //             borderRadius: BorderRadius.circular(50)),
              //         child: Row(
              //           children: [
              //             Icon(Icons.wallet_travel_rounded),
              //             Text(snapshot.data!.wallet.toString())
              //           ],
              //         ),
              //       );
              //     })
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  MY",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, letterSpacing: 2),
          ),
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "   Bookings",
              style: TextStyle(fontSize: 25, letterSpacing: 2),
            )),
        SizedBox(
          height: 40,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 100,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(10)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Text(
                  "Time Slot",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "07:00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          letterSpacing: 2),
                    ),
                    Text(
                      "HRS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Date",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  "20/05/2022",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "View",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 2),
                  ),
                ),
              ],
            )
          ]),
        )
      ])
    ])));
  }
}
