import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class NationalMuseum extends StatefulWidget {
  const NationalMuseum({super.key});

  @override
  State<NationalMuseum> createState() => _NationalMuseumState();
}

class _NationalMuseumState extends State<NationalMuseum> {
  List<String> imageList = [
    "http://192.168.1.111:8000/asset/Ub/Museums/1/NationalMuseum/Undesnii%20Museum%20(1%20of%202).jpg",
    "http://192.168.1.111:8000/asset/Ub/Museums/1/NationalMuseum/Undesnii%20Museum%20(2%20of%202).jpg",
    "http://192.168.1.111:8000/asset/Ub/Museums/1/NationalMuseum/Undesnii%20Museum%20(1%20of%201).jpg",
  ];

  List data = [
    [
      "National Museum",
      "Welcome to the National Museum of Mongolia, a treasure trove of the nation's rich history and cultural heritage. Situated in the heart of Ulaanbaatar, this museum invites you on a captivating journey through Mongolia's past, present, and future. Immerse yourself in a diverse collection of exhibits, showcasing artifacts, art, and relics that span millennia, from the nomadic empires to the modern era. Gain insight into Mongolia's unique traditions, folklore, and the resilience of its people. With engaging displays and interactive installations, the National Museum of Mongolia offers an enlightening experience, providing a deeper understanding of the nation's identity and the vibrant tapestry of its history."
    ]
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController _controller_ = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(
                    imageList[2],
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle,
                      ),
                      iconSize: 50,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  SafeArea(
                    child: Align(
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
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: HexColor('#E8EFFF'),
                    ),
                    width: size.width,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[0][0],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ReadMoreText(
                            data[0][1],
                            trimLines: 5,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Showmore',
                            trimExpandedText: 'Showless',
                            lessStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade500),
                            moreStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade500),
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          // Replace these latitude and longitude values with the actual values
                          double latitude = 47.92084;
                          double longitude = 106.91553;

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
            ),
            Stack(children: [
              SizedBox(
                height: size.width * 0.7,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    itemCount: imageList.length,
                    controller: _controller_,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.network(
                            imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: size.width * 0.62,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: _controller_,
                    count: imageList.length,
                    effect: ScrollingDotsEffect(
                        activeDotScale: 1,
                        activeStrokeWidth: 1,
                        fixedCenter: true,
                        activeDotColor: Colors.red,
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
