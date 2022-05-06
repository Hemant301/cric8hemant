import 'package:cric8hemant/bloc/homebloc.dart';
import 'package:cric8hemant/modal/homemodal.dart';
import 'package:cric8hemant/screen/bottombar.dart';
import 'package:cric8hemant/screen/referearn.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class QuickBook extends StatefulWidget {
  const QuickBook({Key? key}) : super(key: key);

  @override
  State<QuickBook> createState() => _QuickBookState();
}

class _QuickBookState extends State<QuickBook> {
  List<String> selectedBox = [];
  List<int> slectedPrice = [];
  late Razorpay _razorpay;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout(amount) async {
    var options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': int.parse(amount) * 100,
      'name': 'Cric8',
      'description': 'Add Wallet Money',
      'prefill': {'contact': '9798416091', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) async {
    String trnid = response.paymentId!;
    // String userid = userCred.getUserId();
    // walletbloc.fetchwallettrans(userid);
    // cartApi.onPaymentSuceess(
    //     userid: userCred.getUserId(),
    //     totalamount: data['final_amount'],
    //     paymentid: trnid,
    //     emi_id: "0",
    //     isemi: '0',
    //     monthid: '0');

    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId! + "Rs" + '300',
        toastLength: Toast.LENGTH_SHORT);
    Navigator.pushReplacementNamed(
      context, '/firstScreen',
      // arguments: {'amount': amount}
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Fluttertoast.showToast(
    //     msg: "ERROR: " + response.code.toString() + " - " + response.message!,
    //     toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    print('see here');
    print(slectedPrice);
    print(selectedBox);
    int i;
    var sum = 0;
    for (i = 0; i < slectedPrice.length; i++) {
// 	print(arr[i]);
      sum += slectedPrice[i];
      print(sum);
    }
    print(selectedIndex.bitLength);
    homeBloc.fetchslot();
    return Scaffold(
        body: StreamBuilder<SlotModal>(
            stream: homeBloc.getSlot.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();
              return SingleChildScrollView(
                  child: Stack(children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Image(
                                image: AssetImage(
                                  'assets/meetbg.png',
                                ),
                                // height: 200,
                                // width: 200,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BackButtonss(),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedBox.add('1');
                                          slectedPrice.add(0);
                                        });
                                        print(selectedBox);
                                        print(slectedPrice);
                                      },
                                      child: const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "  Quick",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40),
                                        ),
                                      ),
                                    ),
                                    const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "   Book",
                                          style: TextStyle(fontSize: 35),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "NET 1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              color: Color(0xff74C69D)),
                                        )),
                                    Container(
                                      height: 45,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.4),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(1,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: DateTimePicker(
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                            // controller: _monclose,
                                            type: DateTimePickerType.time,
                                            // initialValue: '16/12/2001',
                                            // firstDate: DateTime(1947),
                                            // lastDate: DateTime(2200),
                                            // dateLabelText: 'time',
                                            // dateHintText: 'time',

                                            style: TextStyle(fontSize: 16),
                                            onChanged: (val) => print(val),
                                            validator: (val) {
                                              print(val);
                                            },
                                            onSaved: (val) => print(val),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Wrap(
                                      children: List.generate(
                                          snapshot.data!.slot.length,
                                          (index) => Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 2,
                                                        vertical: 10),
                                                child: InkWell(
                                                  onTap: () {
                                                    // print(snapshot
                                                    //     .data!
                                                    //     .slot[index]
                                                    //     .slot_time_id);
                                                    // return;
                                                    print(selectedBox);
                                                    if (snapshot
                                                            .data!
                                                            .slot[index]
                                                            .is_booked ==
                                                        '1') {
                                                      Fluttertoast.showToast(
                                                          msg:
                                                              'Already Booked');
                                                      return;
                                                    } else {
                                                      if (selectedBox.contains(
                                                          snapshot
                                                              .data!
                                                              .slot[index]
                                                              .slot_time_id!)) {
                                                        print('already exist');
                                                        setState(() {
                                                          slectedPrice.remove(
                                                              int.parse(snapshot
                                                                  .data!
                                                                  .slot[index]
                                                                  .price!));

                                                          selectedBox.remove(
                                                              snapshot
                                                                  .data!
                                                                  .slot[index]
                                                                  .slot_time_id!
                                                                  .toString());
                                                        });

                                                        return;
                                                      } else {
                                                        print('true');
                                                        setState(() {
                                                          slectedPrice.add(
                                                              int.parse(snapshot
                                                                  .data!
                                                                  .slot[index]
                                                                  .price!));
                                                          selectedBox.add(snapshot
                                                              .data!
                                                              .slot[index]
                                                              .slot_time_id!);
                                                        });
                                                      }
                                                    }
                                                  },
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                3 -
                                                            10,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 8,
                                                            horizontal: 2),
                                                    decoration: BoxDecoration(
                                                        color: snapshot
                                                                    .data!
                                                                    .slot[index]
                                                                    .is_booked ==
                                                                "1"
                                                            ? Colors.red
                                                            : selectedBox.contains(
                                                                    snapshot
                                                                        .data!
                                                                        .slot[
                                                                            index]
                                                                        .slot_time_id)
                                                                ? Colors.green
                                                                : Colors
                                                                    .transparent,
                                                        border: Border.all(
                                                            color:
                                                                Colors.black),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                      child: Text(
                                                        '${snapshot.data!.slot[index].venue_start_time!} - ${snapshot.data!.slot[index].venue_end_time!}',
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text('Slot price'),
                                          Spacer(
                                            flex: 1,
                                          ),
                                          Text(
                                              "snapshot.data!.slot_price .toString()"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text('Total slot selected'),
                                          Spacer(
                                            flex: 1,
                                          ),
                                          Text(
                                              '${selectedBox.length.toString()}')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text('Total Price'),
                                          Spacer(
                                            flex: 1,
                                          ),
                                          Container(
                                            child: Text(sum.toString()),
                                          )
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // openCheckout(
                                        //     '${(selectedBox.length) * (int.parse(snapshot.data!.slot_price!))}');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0xff74C69D)),
                                              child: Text(
                                                'Proceed to pay',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                          // Text(
                          //   "   Book",
                          //   style: TextStyle(fontSize: 35),
                          // )
                        ]))
              ]));
            }));
  }
}
