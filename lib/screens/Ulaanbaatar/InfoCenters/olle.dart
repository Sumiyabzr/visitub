import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visitub/style/app_style.dart';

class Olle extends StatefulWidget {
  const Olle({super.key});

  @override
  State<Olle> createState() => _OlleState();
}

class _OlleState extends State<Olle> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(AppStyle.olle), fit: BoxFit.cover)),
              width: size.width,
              height: size.width * 0.7,
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_rounded),
                  color: Colors.black,
                  iconSize: 28,
                ),
              ),
            )
          ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mongol Olle information center',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_pin),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                    'Mongol Olle information center, nalaikh district, 6th khoroo, Terelj village'))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time_filled_rounded),
                            SizedBox(
                              width: 10,
                            ),
                            Text('09:00-18:00')
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(
                              width: 10,
                            ),
                            Text('76092191')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        // Replace these latitude and longitude values with the actual values
                        double latitude = 47.81503;
                        double longitude = 107.16446;

                        // Format the Google Maps URL with the specified latitude and longitude
                        final String googleMapsLink =
                            "https://www.google.com/maps?q=$latitude,$longitude";

                        try {
                          await launch(googleMapsLink);
                        } catch (e) {
                          print('Error launching Google Maps: $e');
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                'Get Directions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
