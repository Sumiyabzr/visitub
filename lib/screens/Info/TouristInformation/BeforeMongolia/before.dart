import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/Insurance/home_screen.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/MainEntryPoints/home_screen.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/Transportation/transportation.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/Vaccines/vaccines.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/Visa/home_screen.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/Weather/home_screen.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/currency.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/family_friendly.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/home_screen.dart';

class Before extends StatefulWidget {
  const Before({super.key});

  @override
  State<Before> createState() => _BeforeState();
}

class _BeforeState extends State<Before> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Before Mongolia',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white12,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 30,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Transportation(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.airplanemode_on_rounded,
                        color: HexColor('#F02310'),
                        size: 45,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainEntryPoints(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.flag_rounded,
                        color: HexColor('#2984B0'),
                        size: 45,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Visa(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.payment,
                        color: HexColor('#F5BF15'),
                        size: 45,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.27,
                    child: Text(
                      'Transportation',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.27,
                    child:
                        Text('Main entry points', textAlign: TextAlign.center),
                  ),
                  Container(
                    width: size.width * 0.27,
                    child: Text(
                      'Visa',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Vaccines(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.health_and_safety_rounded,
                        color: HexColor('#FF5F9D'),
                        size: 45,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Insurance(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.clean_hands_rounded,
                        color: HexColor('#136A3F'),
                        size: 45,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Weather(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.sunny_snowing,
                        color: HexColor('#C77F44'),
                        size: 45,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.27,
                    child: Text(
                      'Precautions',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.27,
                    child: Text('Insurance', textAlign: TextAlign.center),
                  ),
                  Container(
                    width: size.width * 0.27,
                    child: Text(
                      'Weather',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WhatToPack(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.luggage,
                        color: HexColor('#2E2C78'),
                        size: 45,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Currency(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.monetization_on,
                        color: HexColor('#F07E26'),
                        size: 45,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FamilyFriendly(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: size.width * 0.27,
                      height: size.width * 0.27,
                      child: Icon(
                        Icons.people_alt_sharp,
                        color: HexColor('#1EA3E0'),
                        size: 45,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.27,
                    child: Text(
                      'What to pack',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.27,
                    child: Text('Currency', textAlign: TextAlign.center),
                  ),
                  Container(
                    width: size.width * 0.27,
                    child: Text(
                      'Family tips',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           GestureDetector(
        //             onTap: () => Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => Transportation(),
        //                 )),
        //             child: Column(children: [
        //               Icon(
        //                 Icons.airplanemode_active_rounded,
        //                 color: HexColor('#F02310'),
        //                 size: 60,
        //               ),
        //               Text('Transportation')
        //             ]),
        //           ),
        //           Column(children: [
        //             Container(
        //               child: Icon(
        //                 Icons.assistant_photo,
        //                 color: HexColor('#2984B0'),
        //                 size: 60,
        //               ),
        //             ),
        //             Text('Main entry points')
        //           ]),
        //           Column(children: [
        //             Container(
        //               child: Icon(
        //                 Icons.quick_contacts_dialer,
        //                 color: HexColor('#F5BF15'),
        //                 size: 60,
        //               ),
        //             ),
        //             Text('Visas')
        //           ])
        //         ],
        //       ),
        //       // SizedBox(
        //       //   height: 60,
        //       // ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           GestureDetector(
        //             onTap: () => Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => Vaccines(),
        //                 )),
        //             child: Column(children: [
        //               Icon(
        //                 Icons.health_and_safety_rounded,
        //                 color: HexColor('#FF5F9D'),
        //                 size: 60,
        //               ),
        //               Text('Vaccines')
        //             ]),
        //           ),
        //           Column(children: [
        //             Icon(
        //               Icons.clean_hands_rounded,
        //               color: HexColor('#136A3F'),
        //               size: 60,
        //             ),
        //             Text('Insurances')
        //           ]),
        //           Column(children: [
        //             Icon(
        //               Icons.sunny_snowing,
        //               color: HexColor('#C77F44'),
        //               size: 60,
        //             ),
        //             Text('Weather')
        //           ]),
        //         ],
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Column(children: [
        //             Icon(
        //               Icons.luggage,
        //               color: HexColor('#2E2C78'),
        //               size: 60,
        //             ),
        //             Text('What to pack')
        //           ]),
        //           Column(children: [
        //             Icon(
        //               Icons.monetization_on,
        //               color: HexColor('#F07E26'),
        //               size: 60,
        //             ),
        //             Text('Currancy')
        //           ]),
        //           Column(children: [
        //             Icon(
        //               Icons.people_alt_sharp,
        //               color: HexColor('#1EA3E0'),
        //               size: 60,
        //             ),
        //             Text('Family trips')
        //           ]),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
