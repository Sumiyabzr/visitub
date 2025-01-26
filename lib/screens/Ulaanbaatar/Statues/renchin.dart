import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class Renchin extends StatefulWidget {
  const Renchin({super.key});

  @override
  State<Renchin> createState() => _RenchinState();
}

class _RenchinState extends State<Renchin> {
  List<String> imageList = [
    "http://192.168.1.83:8000/asset/Other/Renchin1.jpg",
    "http://192.168.1.83:8000/asset/Other/Renchin2.jpg",
    "http://192.168.1.83:8000/asset/Other/Renchin3.jpg",
    "http://192.168.1.83:8000/asset/Other/Renchin4.jpg",
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
                  Image.network(imageList[3], fit: BoxFit.cover),
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
                            'Statue of Renchin',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          ReadMoreText(
                            'He was a researcher of Mongolian language, scholar and writer. Also he is an author of the screenplay of `Tsogt taij` which is Mongolian first historical feature film. The statue is located right in front of the National library of Mongolia. He is considered to be the creater of Mongolian modern literature.',
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
                          double latitude = 47.9148317;
                          double longitude = 106.9158078;
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
                height: size.width * 1.5,
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
                height: size.width * 1.42,
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
