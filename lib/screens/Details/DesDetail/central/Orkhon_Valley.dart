import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Orkhon_Valley extends StatefulWidget {
  const Orkhon_Valley({super.key});

  @override
  State<Orkhon_Valley> createState() => _Orkhon_ValleyState();
}

class _Orkhon_ValleyState extends State<Orkhon_Valley> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/OrkhoniiKhondii-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/OrkhoniiKhondii-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/OrkhoniiKhondii-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/OrkhoniiKhondii-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/OrkhoniiKhondii-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/OrkhoniiKhondii-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/OrkhoniiKhondii-7.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Red Waterfall Ulaan Tsutgalan/ulaanTsutgalan-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Red Waterfall Ulaan Tsutgalan/ulaanTsutgalan-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Red Waterfall Ulaan Tsutgalan/ulaanTsutgalan-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Red Waterfall Ulaan Tsutgalan/ulaanTsutgalan-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Red Waterfall Ulaan Tsutgalan/ulaanTsutgalan-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Red Waterfall Ulaan Tsutgalan/ulaanTsutgalan-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Red Waterfall Ulaan Tsutgalan/ulaanTsutgalan-7.jpg',
  ];

  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Chuluun khushuu/ChuluunKhushuunuud-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Chuluun khushuu/ChuluunKhushuunuud-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Chuluun khushuu/ChuluunKhushuunuud-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Chuluun khushuu/ChuluunKhushuunuud-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Chuluun khushuu/ChuluunKhushuunuud-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Chuluun khushuu/ChuluunKhushuunuud-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Orkhon Valley/Chuluun khushuu/ChuluunKhushuunuud-7.jpg',
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
                    'Orkhon Valley',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'The Orkhon Valley, a UNESCO World Heritage Site, is often referred to as the cradle of Mongolian civilization. Stretching along the Orkhon River, this valley has been a vital cultural and historical hub for over two millennia. It was once home to the ancient Orkhon inscriptions, the earliest known examples of written Turkic language, and the seat of the Mongol Empire during its zenith. Today, the Orkhon Valley offers breathtaking landscapes of rolling hills, lush meadows, and the winding river that serves as the valley’s lifeline. Visitors can explore its rich archaeological heritage, v isit ancient sites, and experience nomadic culture in a pristine natural setting. The valley is a must-visit for anyone interested in the history of Central Asia and the beauty of Mongolia’s landscapes.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Ulaan Tsutgalan',
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
                      ' Nestled within the Orkhon Valley, Ulaan Tsutgalan is one of Mongolians most spectacular natural wonders. Known as the Red Waterfall, it cascades from a height of 20 meters, forming a dramatic sight against the backdrop of volcanic rock formations and verdant meadows. The waterfall is part of the Orkhon River and was formed thousands of years ago due to volcanic eruptions and earthquakes. Ulaan Tsutgalan is a popular spot for hiking, picnicking, and photography, especially during the summer months when the surrounding area comes alive with wildflowers. Adventurous visitors can climb down to the pool below for a closer view or enjoy the scenic beauty from the surrounding cliffs. This site is an excellent destination for those seeking both tranquility and natural beauty.   '),
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
                  // SECOND --------
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Petroglpyhs',
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
                      'Scattered across the Orkhon Valley are ancient petroglyphs that provide a glimpse into the lives of the people who once inhabited this region. These rock carvings, some dating back to the Bronze Age, depict scenes of daily life, including hunting, herding, and spiritual rituals. They are a testament to the artistic and cultural expression of early nomadic tribes. The most prominent petroglyphs can be found near the Khushuu Tsaidam monuments, which are also inscribed with Orkhon scripts. Exploring these carvings feels like stepping back in time, offering visitors a unique connection to Mongolias ancient history. The petroglyph sites are remote and serene, surrounded by the untouched beauty of the steppe, making them a rewarding destination for history enthusiasts and adventure seekers alike.'),
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
                                    itemCount: Third.length,
                                    controller: _controller3,
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
                                            Third[index],
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
                                    controller: _controller3,
                                    count: Third.length,
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
