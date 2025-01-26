import 'package:flutter/material.dart';

class GuesthouseSeeall extends StatelessWidget {
  const GuesthouseSeeall({super.key});

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
                        //     text: 'Traditional',
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 10),
                        //   child: Tab(
                        //     text: 'International',
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 10),
                        //   child: Tab(
                        //     text: 'Coffee Shop & Bakeries',
                        //   ),
                        // ),
                      ]),
                ),
                // Expanded(
                //     child: TabBarView(children: [
                //   Center(
                //     child: Traditional(),
                //   ),
                //   Center(
                //     child: International(),
                //   ),
                //   Center(
                //     child: CoffeeshopBakeries(),
                //   )
                // ]))
              ],
            ),
          ),
        ));
  }
}
