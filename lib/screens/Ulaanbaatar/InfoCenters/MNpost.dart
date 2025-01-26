import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visitub/style/app_style.dart';

class MongolPost extends StatefulWidget {
  const MongolPost({super.key});

  @override
  State<MongolPost> createState() => _MongolPostState();
}

class _MongolPostState extends State<MongolPost> {
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
                      image: NetworkImage(AppStyle.mongolpost),
                      fit: BoxFit.cover)),
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
                  'Mongol post building',
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
                                    'Mongol post building, Sukhbaatar square 9,1st khoroo Chiingeltei district, Ulaanbaatar'))
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
                            Text('94160459')
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
                        double latitude = 47.91783;
                        double longitude = 106.91557;

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
