import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/see_all/nightlife/tag/adult_entertainment.dart';
import 'package:visitub/screens/Commercial/see_all/nightlife/tag/karaokes.dart';
import 'package:visitub/screens/Commercial/see_all/nightlife/tag/nightclub.dart';
import 'package:visitub/screens/Commercial/see_all/nightlife/tag/pub_lounges.dart';

class NightlifeSeeAll extends StatefulWidget {
  const NightlifeSeeAll({super.key});

  @override
  State<NightlifeSeeAll> createState() => _NightlifeSeeAllState();
}

class _NightlifeSeeAllState extends State<NightlifeSeeAll> {
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
                            text: 'Pub & Lounges',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Nightclub',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Karaokes',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Tab(
                            text: 'Adult Entertainment',
                          ),
                        ),
                      ]),
                ),
                Expanded(
                    child: TabBarView(children: [
                  Center(
                    child: PubLounges(),
                  ),
                  Center(
                    child: Nightclub(),
                  ),
                  Center(
                    child: Karaokes(),
                  ),
                  Center(
                    child: AdultEntertainment(),
                  )
                ]))
              ],
            ),
          ),
        ));
  }
}
