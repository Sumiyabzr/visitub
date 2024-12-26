import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/MainEntryPoints/air_border.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/MainEntryPoints/by_road.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/MainEntryPoints/railway_border.dart';

class MainEntryPoints extends StatefulWidget {
  const MainEntryPoints({super.key});

  @override
  State<MainEntryPoints> createState() => _MainEntryPointsState();
}

class _MainEntryPointsState extends State<MainEntryPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Main entry points',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 28,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
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
                        EdgeInsets.only(top: 10, left: 2, right: 2, bottom: 10),
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: HexColor('#025dc4')),
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
                            child: Text('Air border'),
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
                            child: Text('Railway border'),
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
                            child: Text('By Road'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                Center(child: AirBorder()),
                Center(
                  child: RailwayBorder(),
                ),
                Center(
                  child: BYROAD(),
                )
              ]))
            ],
          ),
        ));
  }
}
