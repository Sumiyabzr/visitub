import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/see_all/shopping/tag/camera.dart';
import 'package:visitub/screens/Commercial/see_all/shopping/tag/madeinmongolia.dart';
import 'package:visitub/screens/Commercial/see_all/shopping/tag/malls_market.dart';
import 'package:visitub/screens/Commercial/see_all/shopping/tag/outdoor.dart';

class ShoppingSeeall extends StatelessWidget {
  const ShoppingSeeall({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Made in Mongolia',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Outdoor',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Malls/Markets',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Camera',
                          ),
                        ),
                      ]),
                ),
                Expanded(
                    child: TabBarView(children: [
                  Center(
                    child: Madeinmongolia(),
                  ),
                  Center(
                    child: Outdoor(),
                  ),
                  Center(
                    child: MallsMarket(),
                  ),
                  Center(
                    child: Camera(),
                  )
                ]))
              ],
            ),
          ),
        ));
  }
}
