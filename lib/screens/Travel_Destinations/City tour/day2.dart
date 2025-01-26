import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visitub/screens/Ulaanbaatar/Museums/bogdkhan.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/gandan.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/zaisan.dart';

class Day2Screen extends StatefulWidget {
  const Day2Screen({super.key});

  @override
  State<Day2Screen> createState() => _Day2ScreenState();
}

class _Day2ScreenState extends State<Day2Screen> {
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
                          'http://192.168.1.83:8000/asset/Gandan (1 of 1).jpg'))),
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
                              color: Colors.black,
                            ),
                            iconSize: 28,
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
                            'Day 2',
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
                        height: size.height * 0.15,
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
                                          builder: (context) => Gandan(),
                                        )),
                                    child: Text(
                                      '1.Gandan Tegchinlen Monastery',
                                      style: TextStyle(fontSize: 12),
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.white,
                                      backgroundColor: Colors.black87,
                                    ),
                                    onPressed: () async {
                                      double latitude = 47.9230761;
                                      double longitude = 106.8949407;
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
                                          'Get\nDirections',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'The most optimal time to experience the center of Mongolian Buddhism is in the morning, because they chant every morning for the good sake of the people.',
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
                                  'http://192.168.1.83:8000/asset/Gandan (1 of 2)-2.jpg'),
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
                                  'http://192.168.1.83:8000/asset/Gandan (1 of 3).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Gandan (2 of 2)-2.jpg'),
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
                                builder: (context) => Zaisan(),
                              )),
                          child: Text(
                            '2. Zaisan Monument',
                            style: TextStyle(fontSize: 12),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () async {
                            double latitude = 47.8871984;
                            double longitude = 106.9155845;
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
                  SizedBox(height: 5),
                  Text(
                    'A historically important monument which is located on top of the Zaisan hill will require you to go many stairs up. But from the top you will be rewarded with a spectacular panoramic view of our Capital City. ',
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
                                  'http://192.168.1.83:8000/asset/Zaisan (2 of 3).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Zaisan (3 of 3).jpg'),
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
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BogdKhan(),
                              )),
                          child: Text(
                            '3. Winter Palace of the Bogd Khan',
                            style: TextStyle(fontSize: 12),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black87,
                          ),
                          onPressed: () async {
                            double latitude = 47.8973454;
                            double longitude = 106.9070794;
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
                                'Get\nDirections',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    '2 Km north of Zaisan, is the Winter Palace of Bogd Khan, former spiritual ruler of Mongolia. The palace is the only one left of the originally four residences of the Bogd Khan and alongside it is the oldest museum. It is also considered one of the biggest collections in Mongolia.',
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
                                  'http://192.168.1.83:8000/asset/Bogd (1 of 4).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Bogd (2 of 4).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Bogd (3 of 4).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Bogd (4 of 4).jpg'),
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
                        '4. Tumen Ekh Ensemble',
                        style: TextStyle(fontSize: 12),
                      )),
                  SizedBox(height: 5),
                  Text(
                    'If you are interested in the Mongolian Traditional Cultural Heritage, Tumen Ekh Ensemble is the place to visit, they showcase our wide culture by performing a live concert.',
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
                                  'http://192.168.1.83:8000/asset/TumenEkh (1 of 5).jpg'),
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
                                  'http://192.168.1.83:8000/asset/TumenEkh (2 of 5).jpg'),
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
                                  'http://192.168.1.83:8000/asset/TumenEkh (3 of 5).jpg'),
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
                                  'http://192.168.1.83:8000/asset/TumenEkh (4 of 5).jpg'),
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
                                  'http://192.168.1.83:8000/asset/TumenEkh (5 of 5).jpg'),
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
                    onTap: () => Navigator.popAndPushNamed(context, '/day3'),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Text(
                            'Continue Day 3',
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
