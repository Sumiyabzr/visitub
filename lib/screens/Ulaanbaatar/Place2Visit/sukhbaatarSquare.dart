import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class SukhbaatarSquare extends StatefulWidget {
  const SukhbaatarSquare({super.key});

  @override
  State<SukhbaatarSquare> createState() => _SukhbaatarSquareState();
}

class _SukhbaatarSquareState extends State<SukhbaatarSquare> {
  List<String> imageList = [
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(1%20of%208).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(2%20of%208).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(3%20of%208).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(4%20of%208).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(5%20of%208).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(6%20of%208).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(7%20of%208).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/S%20(1%20of%201).jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/SukhbaatarSquare%20(8%20of%208).jpg"
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
                  Image.network(imageList[7], fit: BoxFit.cover),
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
                          color: const Color.fromARGB(255, 0, 0, 0)
                              .withOpacity(0.7),
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
                            'Sukhbaatar square',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          ReadMoreText(
                            'The very center of Mongolian capital city, Central square where Mongolians declared independence in 1921. The square was built and named after revolutionary hero Damdin Sukhbaatar in 1951.',
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
                                      color: Colors.white),
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
                            // color: color[index],
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
