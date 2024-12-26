import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/see_all/hotel/tag/affordable.dart';
import 'package:visitub/screens/Commercial/see_all/hotel/tag/luxurious.dart';
import 'package:visitub/screens/Commercial/see_all/hotel/tag/premium.dart';

class HotelSeeAll extends StatefulWidget {
  const HotelSeeAll({super.key});

  @override
  State<HotelSeeAll> createState() => _HotelSeeAllState();
}

class _HotelSeeAllState extends State<HotelSeeAll>{
  @override
  Widget build(BuildContext context) {
    return 
    DefaultTabController(
      length: 3, 
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TabBar(
                  labelStyle: TextStyle(fontSize: 10),
                  indicator: BoxDecoration(
                    color: Color.fromARGB(255, 0, 136, 255),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  labelColor: Colors.white,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Tab(
                        text: 'Luxurious',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Tab(
                        text: 'Premium',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Tab(
                        text: 'Affordable',
                      ),
                    ),
                  ]
                ),
              ), 
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: Luxurious(),
                    ),
                     Center(
                      child: Premium(),
                    ),
                     Center(
                      child: Affordable(),
                    )
                  ]
                )
              )
            ],
          ),
        ),
      )
    );
    //-----------------------------------------------------------------------------------------------
    // DefaultTabController(
    //     length: 4,
    //     child: Scaffold(
    //       backgroundColor: Colors.white,
    //       body: Column(
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 15),
    //             child: TabBar(
    //                 isScrollable: true,
    //                 physics: const ClampingScrollPhysics(),
    //                 padding: EdgeInsets.only(top: 2, bottom: 10),
    //                 unselectedLabelColor: Colors.grey,
    //                 indicator: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(30),
    //                     color: HexColor('#5A9BF8')),
    //                 tabs: [
    //                   Tab(
    //                     text: '4+ star',
    //                   ),
    //                   Tab(
    //                     text: '3 star',
    //                   ),
    //                   Tab(
    //                     text: 'Guesthouse',
    //                   ),
    //                   Tab(
    //                     text: 'Serviced Apartments',
    //                   )
    //                 ]),
    //           ),
    //           Expanded(
    //               child: TabBarView(children: [
    //             Center(child: Comm4Star()),
    //             Center(child: Comm3Star()),
    //             Center(child: Guesthouse()),
    //             Center(child: ServicesApartment())
    //           ]))
    //         ],
    //       ),
    //     ));
  }
}
