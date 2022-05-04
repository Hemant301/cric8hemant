import 'package:cric8hemant/bloc/homebloc.dart';
import 'package:cric8hemant/modal/homemodal.dart';
import 'package:cric8hemant/screen/referearn.dart';
import 'package:flutter/material.dart';

class QuickBook extends StatefulWidget {
  const QuickBook({Key? key}) : super(key: key);

  @override
  State<QuickBook> createState() => _QuickBookState();
}

class _QuickBookState extends State<QuickBook> {
  @override
  Widget build(BuildContext context) {
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
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "  Quick",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40),
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
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          3 -
                                                      10,
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 2),
                                                  decoration: BoxDecoration(
                                                      color: snapshot
                                                                  .data!
                                                                  .slot[index]
                                                                  .is_booked ==
                                                              "1"
                                                          ? Colors.grey
                                                          : Colors.transparent,
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Text(
                                                    '${snapshot.data!.slot[index].venue_start_time!} - ${snapshot.data!.slot[index].venue_end_time!}',
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                              )),
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
