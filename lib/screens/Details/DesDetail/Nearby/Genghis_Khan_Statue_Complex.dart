import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Genghis_Khan_Statue_Complex extends StatefulWidget {
  const Genghis_Khan_Statue_Complex({super.key});

  @override
  State<Genghis_Khan_Statue_Complex> createState() =>
      _Genghis_Khan_Statue_ComplexState();
}

class _Genghis_Khan_Statue_ComplexState
    extends State<Genghis_Khan_Statue_Complex> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Genghis Khan Statue Complex (1 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Genghis Khan Statue Complex (2 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Genghis Khan Statue Complex (3 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Genghis Khan Statue Complex (4 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Genghis Khan Statue Complex (5 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Genghis Khan Statue Complex (6 of 6).jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (1 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (2 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (3 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (4 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (5 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (6 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (7 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (8 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (9 of 10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Genghis Khan Statue Complex/Museum/Museum (10 of 10).jpg',
  ];

  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-9.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: size.width * 0.7,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(children: [
                        SizedBox(
                          height: size.width * 0.7,
                          width: MediaQuery.of(context).size.width,
                          child: PageView.builder(
                              itemCount: TopImage.length,
                              controller: _controller1,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 0),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      // color: color[index],
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                    ),
                                    child: Image.network(
                                      TopImage[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: size.width * 0.68,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: _controller1,
                              count: TopImage.length,
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
                        ),
                        SafeArea(
                            child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                )))
                      ]),
                    ),
                    SafeArea(
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Genghis Khan Statue Complex ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'The Genghis Khan Statue Complex is one of Mongolia’s most iconic and awe-inspiring landmarks. Located about 55 km east of Ulaanbaatar, this towering 40-meter (131-foot) statue of Genghis Khan on horseback is the largest equestrian statue in the world. Rising majestically from the Mongolian steppe, the statue commemorates the legendary founder of the Mongol Empire, symbolizing his immense impact on history. According to legend, the statue is situated on the spot where Genghis Khan discovered a golden whip, a sign of good fortune that led him to greatness. The statue’s interior is just as remarkable as its exterior. Visitors can take an elevator to a viewing platform on the horses head, offering breathtaking panoramic views of the surrounding steppe—perfect for photographs and reflection on the vastness of the Mongolian landscape.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '13th Century Museum',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#1862FF'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google map',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      ' Inside the Genghis Khan Statue Complex, the 13th Century Museum provides a deeper dive into the life and times of Genghis Khan and the Mongol Empire. The museum houses an impressive collection of artifacts, including traditional weapons, tools, and clothing from the era. Interactive exhibits offer insight into the nomadic lifestyle, governance, and military strategies that propelled the Mongol Empire to global prominence. Exploring the museum complements the grandeur of the statue, providing visitors with a well-rounded experience of Mongolians rich history and cultural heritage. Whether you are a history enthusiast or simply curious about the legacy of the Mongol Empire, the Genghis Khan Statue Complex and its museum are must-visit destinations. '),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: size.width * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              SizedBox(
                                height: size.width * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: Second.length,
                                    controller: _controller2,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            Second[index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: size.width * 0.68,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SmoothPageIndicator(
                                    controller: _controller2,
                                    count: Second.length,
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
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // RD ------------------
                  SizedBox(
                    height: 20,
                  ),

                  // REEL -----------------
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(TopImage[0]), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width,
                    height: size.height * 0.7,
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  // REEL END ---------------------
                  SizedBox(
                    height: 15,
                  ),
                  // RECOMM ACC ----------------------
                  Text(
                    'Recommended accommodations',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                    ],
                  ),
                  // RECOMM ACC END ----------------------
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
