import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Bulgan extends StatefulWidget {
  const Bulgan({super.key});

  @override
  State<Bulgan> createState() => _BulganState();
}

class _BulganState extends State<Bulgan> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Bulgan Sum/BulganSum-9.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Bulgan/Khavtsgait_s Petroglyphs/PetroglyphsofKhavtsgait-9.jpg',
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
                    'Bulgan ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Bulgan Sum, located in Umnugovi Province, is an essential stop for travelers exploring the vast expanse of the Gobi Desert. This small yet strategically significant settlement provides much-needed services, including fuel, making it a crucial hub for those venturing into the remote regions of the Gobi. Apart from its logistical importance, Bulgan Sum offers a rich cultural and historical experience, with ancient petroglyphs, nomadic traditions, and scenic desert landscapes. The region is known for its wide-open plains and the numerous tourist camps scattered across the area, where visitors can stay in traditional gers and experience the unique lifestyle of Mongolian herders. Many camps provide authentic cultural experiences, such as camel riding and traditional Mongolian meals, making Bulgan Sum a peaceful and enriching destination.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Petroglyphs of Khavtsgait',
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
                      ' One of the most significant historical sites in Bulgan Sum is the Khavtsgait Petroglyphs, a collection of ancient rock carvings that date back several millennia. These petroglyphs are etched into the rocky slopes of the Khavtsgait Mountains, offering a glimpse into the lives of Mongolians early inhabitants. The carvings depict scenes of hunting, wild animals, and daily life, showcasing the artistry and cultural expressions of the regions ancient nomads. Visitors can hike to these petroglyphs, exploring the rocky outcrops and discovering the intricate carvings scattered across the site. The Khavtsgait Petroglyphs are a fascinating destination for those interested in history and archaeology, adding a deep cultural layer to the exploration of the Gobi Desert. '),
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
