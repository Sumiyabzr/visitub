import 'package:flutter/material.dart';
import 'package:visitub/screens/Info/TouristInformation/UsefulTipsInMN/Local%20Transportations/buses.dart';
import 'package:visitub/screens/Info/TouristInformation/UsefulTipsInMN/Local%20Transportations/flights.dart';
import 'package:visitub/screens/Info/TouristInformation/UsefulTipsInMN/Local%20Transportations/taxis.dart';

class LocalTransportations extends StatefulWidget {
  const LocalTransportations({super.key});

  @override
  State<LocalTransportations> createState() => _LocalTransportationsState();
}

class _LocalTransportationsState extends State<LocalTransportations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Local transportations',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              )),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Material(
                child: Container(
                  height: 55,
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: TabBar(
                    physics: const ClampingScrollPhysics(),
                    padding:
                        EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade600),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 35,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(30),
                          //     border: Border.all(
                          //         color: const Color.fromARGB(255, 0, 0, 0),
                          //         width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Local flights'),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 35,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(30),
                          //     border: Border.all(
                          //         color: const Color.fromARGB(255, 0, 0, 0),
                          //         width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Local buses'),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 35,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(30),
                          //     border: Border.all(
                          //         color: const Color.fromARGB(255, 0, 0, 0),
                          //         width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Local taxis'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                Center(child: LocalFlights()),
                Center(
                  child: LocalBuses(),
                ),
                Center(
                  child: LocalTaxis(),
                )
              ]))
            ],
          ),
        ));
  }
}
