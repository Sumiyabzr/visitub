import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visitub/screens/Ulaanbaatar/Museums/chinggiskhaan.dart';
import 'package:visitub/screens/Ulaanbaatar/Museums/choijinlama.dart';
import 'package:visitub/screens/Ulaanbaatar/Museums/national.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/sukhbaatarSquare.dart';

class DayScreen extends StatefulWidget {
  const DayScreen({super.key});

  @override
  State<DayScreen> createState() => _DayScreenState();
}

class _DayScreenState extends State<DayScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: NetworkImage(
                          'http://192.168.1.111:8000/asset/S.jpg'))),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1)
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Stack(children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              size: 28,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 58, horizontal: 18),
                          child: Text(
                            'Day 1',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: size.width,
                        height: size.height * 0.12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.white,
                                      backgroundColor: Colors.black87,
                                    ),
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ChinggisKhaanMuseum(),
                                        )),
                                    child: Text(
                                      '1. Sukhbaatar Square',
                                      style: TextStyle(fontSize: 14),
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.white,
                                      backgroundColor: Colors.black87,
                                    ),
                                    onPressed: () async {
                                      double latitude = 47.92249;
                                      double longitude = 106.91499;
                                      final String googleMapsLink =
                                          "https://www.google.com/maps?q=$latitude,$longitude";
                                      try {
                                        await launch(googleMapsLink);
                                      } catch (e) {
                                        print(
                                            "Error launching Google Maps: $e");
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_circle_right_rounded,
                                          size: 20,
                                        ),
                                        Text(
                                          'Get Directions',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                            Text(
                              'Our city tour starts from the very center of our capital, the sukhbaatar square. It is surrounded by many historic buildings and statues.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            Container(
              height: size.height * 0.25,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (1 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (2 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (3 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (4 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (5 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (6 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (7 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/SukhbaatarSquare (8 of 8).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SukhbaatarSquare(),
                              )),
                          child: Text(
                            '2. Chinggis Khaan Museum',
                            style: TextStyle(fontSize: 14),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () async {
                            double latitude = 47.918737;
                            double longitude = 106.9174897;
                            final String googleMapsLink =
                                "https://www.google.com/maps?q=$latitude,$longitude";
                            try {
                              await launch(googleMapsLink);
                            } catch (e) {
                              print("Error launching Google Maps: $e");
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_rounded,
                                size: 20,
                              ),
                              Text(
                                'Get Directions',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ))
                    ],
                  ),
                  Text(
                    'Chinggis Khaan Museum & Cultural Center was just recently opened in 2022 . It has 15 exhibition halls and the museum includes a 250-seat hall, offering virtual tours and many other events for the public.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 185,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chinggis (4 of 4).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chinggis (3 of 4).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chinggis (2 of 4).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chinggis (1 of 4).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NationalMuseum(),
                              )),
                          child: Text(
                            '3. National Museum of Mongolia',
                            style: TextStyle(fontSize: 12),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () async {
                            double latitude = 47.92084;
                            double longitude = 106.91553;
                            final String googleMapsLink =
                                "https://www.google.com/maps?q=$latitude,$longitude";
                            try {
                              await launch(googleMapsLink);
                            } catch (e) {
                              print("Error launching Google Maps: $e");
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_rounded,
                                size: 20,
                              ),
                              Text(
                                'Get Directions',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ))
                    ],
                  ),
                  // Text(
                  //   '3. National Museum of Mongolia',
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 23,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  Text(
                    'West of the square is the national museum of Mongolia, a must for tourists if you want to know more about the history of our people.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 185,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chinggis (3 of 3).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chinggis (2 of 3).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chinggis (1 of 3).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.white,
                        backgroundColor: Colors.black87,
                      ),
                      onPressed: () {},
                      child: Text(
                        '4.Gobi Cashmere / Galleria Souvenir shop',
                        style: TextStyle(fontSize: 14),
                      )),
                  SizedBox(height: 5),
                  Text(
                    'One of the biggest souvenir shops located next to sukhbaatar square, Galleria souvenir shop has a wide range of choices for you to gift your friends and family.  East of the square is the most reputable Cashmere shop in Mongolia, Gobi. It offers the best quality cashmere products. We highly recommend their sleepings bags as well.  ',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 185,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Galleria (1 of 1).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Gobi (1 of 5).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Gobi (2 of 5).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Gobi (3 of 5).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Gobi (4 of 5).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Gobi (5 of 5).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChoijinLama(),
                              )),
                          child: Text(
                            '5. Choijin Lama Temple',
                            style: TextStyle(fontSize: 14),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () async {
                            double latitude = 47.914533;
                            double longitude = 106.9184398;
                            final String googleMapsLink =
                                "https://www.google.com/maps?q=$latitude,$longitude";
                            try {
                              await launch(googleMapsLink);
                            } catch (e) {
                              print("Error launching Google Maps: $e");
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_rounded,
                                size: 20,
                              ),
                              Text(
                                'Get Directions',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ))
                    ],
                  ),

                  // Text(
                  //   '5. Choijin Lama Temple',
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 23,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(height: 5),
                  Text(
                    'In the middle of the modern downtown, there is a complex of temples called Choijin Lama Temple, which is a popular tourist attraction as there is a museum inside for tourists to see.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 185,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chojin (1 of 2).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Chojin (2 of 2).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Gandan (1 of 2).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 325,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/Gandan (2 of 2).jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            'Back to City Tour',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          )
                        ]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context, '/day2'),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Text(
                            'Continue Day 2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
