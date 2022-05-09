import 'package:cric8hemant/auth/homeapi.dart';
import 'package:cric8hemant/bloc/homebloc.dart';
import 'package:cric8hemant/modal/homemodal.dart';
import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map rcvd = ModalRoute.of(context)!.settings.arguments as Map;
    print(rcvd['id']);
    homeBloc.fetchTicket(rcvd['id']);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(110, 0, 0, 0),
        body: StreamBuilder<TicketModal>(
            stream: homeBloc.getTicket.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'This Match is\n Gear up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                  width: 80,
                                  height: 100,
                                  child: Image.network(
                                    'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                    fit: BoxFit.contain,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data!.userData[0].name!,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.schedule,
                                        size: 15,
                                      ),
                                      Text(
                                        'Tommorow Night',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    snapshot.data!.ticket[0].date!,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  // Text(
                                  //   'Karma 75',
                                  //   style:
                                  //       TextStyle(fontWeight: FontWeight.bold),
                                  // )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Row(
                                children: [
                                  Icon(Icons.map),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                      child: Text(
                                    '${snapshot.data!.userData[0].city!} \n ${snapshot.data!.userData[0].pincode!} ',
                                  ))
                                ],
                              ))
                            ],
                          )),
                    ),
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/ticket.png',
                          width: MediaQuery.of(context).size.width,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Time Slot',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Column(
                                          children: List.generate(
                                            snapshot.data!.ticket.length,
                                            (index) => Row(
                                              children: [
                                                Text(
                                                  '${snapshot.data!.ticket[index].venue_start_time!} - ${snapshot.data!.ticket[index].venue_end_time!}',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Admission Details',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Zara Querisi',
                                        ),
                                        Text('Zara Querisi')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width - 40,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 50,
                                          height: 80,
                                          child: Image.network(
                                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                            fit: BoxFit.contain,
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            snapshot.data!.userData[0].name!,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.schedule,
                                                size: 15,
                                              ),
                                              Text(
                                                'Tommorow Night',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            snapshot.data!.ticket[0].date!,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          // Text(
                                          //   'Karma 75',
                                          //   style: TextStyle(
                                          //       fontWeight: FontWeight.bold,
                                          //       fontSize: 12),
                                          // )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Icon(Icons.map),
                                          Expanded(
                                              child: Text(
                                            '${snapshot.data!.userData[0].city!} \n ${snapshot.data!.userData[0].pincode!} ',
                                          ))
                                        ],
                                      ))
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                              child: Icon(Icons.download, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/boot');
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Close',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
