import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/clothing.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/electronics.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/food_drink.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/general_travel_gear.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/miscellaneous.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/WhatToPack/Products/personal_document.dart';

class WhatToPack extends StatefulWidget {
  const WhatToPack({super.key});

  @override
  State<WhatToPack> createState() => _WhatToPackState();
}

class _WhatToPackState extends State<WhatToPack> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'What to pack',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                'Packing for a trip to Mongolia requires careful consideration of the diverse climate, rugged terrain, and unique travel experiences you may encounter. Here`s a list of essential items to pack when traveling to Mongolia. Please keep in mind this is a non-exhaustive list, that should be adapted to your specific needs and habits.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              ////////////////////////////////////   ROW1   ////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Clothing(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0)
                          ],
                          color: Colors.white),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor('#2E2C78')),
                            child: Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GeneralTravelGear(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0)
                          ],
                          color: Colors.white),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor('#2E2C78')),
                            child: Icon(
                              Icons.luggage_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodDrink(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0)
                          ],
                          color: Colors.white),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor('#2E2C78')),
                            child: Icon(
                              Icons.fastfood,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.28,
                    child: Text(
                      'Clothing',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.28,
                    child: Text(
                      'Travel Gear',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.28,
                    child: Text(
                      'Food and drink',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ////////////////////////////////////   ROW2   ////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalDocument(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0)
                          ],
                          color: Colors.white),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor('#2E2C78')),
                            child: Icon(
                              Icons.edit_document,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Miscellaneous(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0)
                          ],
                          color: Colors.white),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor('#2E2C78')),
                            child: Icon(
                              Icons.plagiarism_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Electronics(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0)
                          ],
                          color: Colors.white),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor('#2E2C78')),
                            child: Icon(
                              Icons.electrical_services_rounded,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.28,
                    child: Text(
                      'Documents',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.28,
                    child: Text(
                      'Miscellaneous',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.28,
                    child: Text(
                      'Electronics',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
