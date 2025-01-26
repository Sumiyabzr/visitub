import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/see_all/activities/activities.dart';
import 'package:visitub/screens/Commercial/see_all/fashion/fashion.dart';
import 'package:visitub/screens/Commercial/see_all/food/food.dart';
import 'package:visitub/screens/Commercial/see_all/guesthouse/guesthouse.dart';
import 'package:visitub/screens/Commercial/see_all/hospital/hospital.dart';
import 'package:visitub/screens/Commercial/see_all/hotel/hotel.dart';
import 'package:visitub/screens/Commercial/see_all/nightlife/nightlife.dart';
import 'package:visitub/screens/Commercial/see_all/shopping/shopping.dart';
import 'package:visitub/screens/Commercial/see_all/wellness/wellness.dart';

class Seeallguesthouse extends StatelessWidget {
  const Seeallguesthouse({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 7,
        length: 9,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: ButtonsTabBar(
                  physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                  borderWidth: BorderSide.strokeAlignOutside,
                  backgroundColor: const Color.fromARGB(255, 0, 136, 255),
                  unselectedBorderColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home_work_rounded),
                      text: 'Hotel',
                    ),
                    Tab(
                      icon: Icon(Icons.food_bank_rounded),
                      text: 'Food',
                    ),
                    Tab(
                      icon: Icon(Icons.shopping_bag_rounded),
                      text: 'Fashion',
                    ),
                    Tab(
                      icon: Icon(Icons.nightlight),
                      text: 'Nightlife',
                    ),
                    Tab(
                      icon: Icon(Icons.shopping_bag),
                      text: 'Shopping',
                    ),
                    Tab(
                      icon: Icon(Icons.volunteer_activism),
                      text: 'Wellness',
                    ),
                    Tab(
                      icon: Icon(Icons.run_circle_outlined),
                      text: 'Activities',
                    ),
                    Tab(
                      icon: Icon(Icons.other_houses_sharp),
                      text: 'Guesthouses',
                    ),
                    Tab(
                      icon: Icon(Icons.local_hospital_outlined),
                      text: 'Hospital',
                    ),
                  ])),
          body: TabBarView(
            children: [
              HotelSeeAll(),
              FoodSeeAll(),
              FashionSeeAll(),
              ShoppingSeeall(),
              NightlifeSeeAll(),
              WellnessSeeall(),
              ActivitiesSeeall(),
              GuesthouseSeeall(),
              HospitalSeeall()
            ],
          ),
        ));
  }
}
