import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/see_all/fashion/tag/brans.dart';
import 'package:visitub/screens/Commercial/see_all/fashion/tag/cashmere.dart';
import 'package:visitub/screens/Commercial/see_all/fashion/tag/tailor_shops.dart';
import 'package:visitub/screens/Commercial/see_all/fashion/tag/traditional.dart';

class FashionSeeAll extends StatelessWidget {
  const FashionSeeAll({super.key});

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
                            text: 'Cashmere',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Traditional',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Tailor Shops',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Brands',
                          ),
                        ),
                      ]),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: CashmereComm(),
                      ),
                      Center(
                        child: TraditionalFashionComm(),
                      ),
                      Center(
                        child: TailorShops(),
                      ),
                      Center(
                        child: BransComm(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
