import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/see_all/hospital/tag/dental.dart';
import 'package:visitub/screens/Commercial/see_all/hospital/tag/international.dart';
import 'package:visitub/screens/Commercial/see_all/hospital/tag/traditional.dart';

class HospitalSeeall extends StatelessWidget {
  const HospitalSeeall({super.key});

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
                            text: 'Dental',
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
                            text: 'International',
                          ),
                        ),
                      ]),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Dental(),
                      ),
                      Center(
                        child: TraditionalHospital(),
                      ),
                      Center(
                        child: InternationalHospital(),
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
