import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/central.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/nearby.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/southern.dart';

class Accommodation extends StatefulWidget {
  const Accommodation({super.key});

  @override
  State<Accommodation> createState() => _AccommodationState();
}

class _AccommodationState extends State<Accommodation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nearby',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccNearbySeeAll(),
                      )),
                  child: Text(
                    'See all',
                    style: TextStyle(color: HexColor('#1862FF')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Central',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccCentralSeeAll(),
                      )),
                  child: Text(
                    'See all',
                    style: TextStyle(color: HexColor('#1862FF')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Southern',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccSouthernSeeAll(),
                        )),
                    child: Text('See all',
                        style: TextStyle(color: HexColor('#1862FF')))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Western',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('See all'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Eastern',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('See all'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nothern',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('See all'),
              ],
            ),
          )
        ],
      ),
    );
    //Consumer<CommonProvider>(builder: (context, provider, child) {
    //   return Scaffold(
    //     backgroundColor: Colors.white,
    //     body: SingleChildScrollView(
    //       physics: BouncingScrollPhysics(),
    //       child: Column(
    //         children: List.generate(
    //             provider.categories.length,
    //             (index) => Column(
    //                   children: [
    //                     Padding(
    //                       padding: EdgeInsets.symmetric(
    //                           vertical: 15, horizontal: 15),
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         children: [
    //                           Text(
    //                             provider.categories[index]['name'],
    //                             style: TextStyle(
    //                                 fontSize: 20, fontWeight: FontWeight.w700),
    //                           ),
    //                           // InkWell(
    //                           //   onTap: () {
    //                           //     provider.setCategoryIndex(index);
    //                           //     Navigator.of(context).push(MaterialPageRoute(
    //                           //         builder: (context) => SeeAll(1)));
    //                           //   },
    //                           //   child: GestureDetector(
    //                           //     child: Text(
    //                           //       'See all',
    //                           //       style: TextStyle(
    //                           //           color: Colors.blue,
    //                           //           fontSize: 15,
    //                           //           fontWeight: FontWeight.w500),
    //                           //     ),
    //                           //   ),
    //                           // ),
    //                         ],
    //                       ),
    //                     ),
    //                     // Align(
    //                     //   alignment: Alignment.centerLeft,
    //                     //   child: SingleChildScrollView(
    //                     //       physics: BouncingScrollPhysics(),
    //                     //       scrollDirection: Axis.horizontal,
    //                     //       child: Padding(
    //                     //         padding:
    //                     //             const EdgeInsets.symmetric(horizontal: 15),
    //                     //         child: Wrap(
    //                     //           alignment: WrapAlignment.start,
    //                     //           crossAxisAlignment: WrapCrossAlignment.start,
    //                     //           spacing: 15,
    //                     //           children: List.generate(
    //                     //               provider.products[index].length,
    //                     //               (index1) => MiniCard('/accCamp',
    //                     //                   "desProduct", index, index1)),
    //                     //         ),
    //                     //       )),
    //                     // ),
    //                   ],
    //                 )),
    //       ),
    //     ),
    //   );
    // });
  }
}
