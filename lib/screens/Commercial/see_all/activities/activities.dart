import 'package:flutter/material.dart';

class ActivitiesSeeall extends StatelessWidget {
  const ActivitiesSeeall({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 0,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: TabBar(
                      isScrollable: true,
                      labelStyle: TextStyle(fontSize: 10),
                      indicator: BoxDecoration(
                          color: Color.fromARGB(255, 0, 136, 255),
                          borderRadius: BorderRadius.circular(15)),
                      labelColor: Colors.white,
                      tabs: [
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 10),
                        //   child: Tab(
                        //     text: 'Cashmere',
                        //   ),
                        // ),
                      ]),
                ),
                // Expanded(
                //   child: TabBarView(
                //     children: [
                //       Center(
                //         child: CashmereComm(),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
