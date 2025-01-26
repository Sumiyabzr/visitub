import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/see_all/wellness/tag/beauty_salons.dart';
import 'package:visitub/screens/Commercial/see_all/wellness/tag/massage.dart';
import 'package:visitub/screens/Commercial/see_all/wellness/tag/sauna.dart';

class WellnessSeeall extends StatelessWidget {
  const WellnessSeeall({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
                            text: 'Beauty Salons',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Massage',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Sauna',
                          ),
                        ),
                      ]),
                ),
                Expanded(
                    child: TabBarView(children: [
                  Center(
                    child: BeautySalons(),
                  ),
                  Center(
                    child: Massage(),
                  ),
                  Center(
                    child: Sauna(),
                  ),
                ]))
              ],
            ),
          ),
        ));
  }
}
