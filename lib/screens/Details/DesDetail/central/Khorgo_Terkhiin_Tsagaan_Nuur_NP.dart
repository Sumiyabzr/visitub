import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Khorgo_Terkhiin_Tsagaan_Nuur_NP extends StatefulWidget {
  const Khorgo_Terkhiin_Tsagaan_Nuur_NP({super.key});

  @override
  State<Khorgo_Terkhiin_Tsagaan_Nuur_NP> createState() =>
      _Khorgo_Terkhiin_Tsagaan_Nuur_NPState();
}

class _Khorgo_Terkhiin_Tsagaan_Nuur_NPState
    extends State<Khorgo_Terkhiin_Tsagaan_Nuur_NP> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgo-TerkhiinTsagaanNuurNP--1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgo-TerkhiinTsagaanNuurNP--2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgo-TerkhiinTsagaanNuurNP--3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgo-TerkhiinTsagaanNuurNP--4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgo-TerkhiinTsagaanNuurNP--5.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgiin Togoo/KhorgiinTogoo-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgiin Togoo/KhorgiinTogoo-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgiin Togoo/KhorgiinTogoo-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgiin Togoo/KhorgiinTogoo-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgiin Togoo/KhorgiinTogoo-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgiin Togoo/KhorgiinTogoo-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Khorgiin Togoo/KhorgiinTogoo-7.jpg',
  ];

  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khorgo-Terkhiin Tsagaan Nuur NP/Terkhiin tsagaan Nuur/TerkhiinTsagaanNuur-12.jpg',
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
                    'Khorgo-Terkhiin Tsagaan Nuur NP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Located in the heart of Arkhangai Province, within the Khorgo-Terkhiin Tsagaan Nuur National Park, the combination of the Khorgo Volcano and Terkhiin Tsagaan Lake creates one of the most stunning and diverse natural landscapes in Mongolia. This unique region offers visitors the chance to experience both the dramatic volcanic scenery of Khorgo and the serene beauty of the Great White Lake.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Khorgo Volcano',
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
                      ' Khorgo Volcano is an extinct volcano that rises to 2,240 meters above sea level, offering visitors incredible panoramic views of the surrounding volcanic field, mountain ranges, and the expansive Terkhiin Tsagaan Lake. The crater itself is about 200 meters wide and 100 meters deep, and the hike to the top is accessible for most travelers, rewarding them with breathtaking views of the region’s volcanic rock formations and the beautiful lake below. The volcano erupted around 8,000 years ago, and the remnants of lava flows can still be seen in the area, creating fascinating landscapes filled with rugged rocks, caves, and pine forests. Adventurers can explore the area on foot, discovering ancient lava tunnels and bizarre rock formations formed by the cooling lava. The volcanic soil has given rise to rich plant life, adding to the unique beauty of the landscape. '),
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
                        'Terkhiin Tsagaan Lake',
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
                      'At the base of Khorgo lies the serene Terkhiin Tsagaan Lake, also known as the Great White Lake. Formed by volcanic activity, this freshwater lake stretches over 16 kilometers in length and is surrounded by grassy meadows, pine forests, and the towering mountains of the Khangai Range. The crystal-clear waters of the lake are perfect for fishing, boating, and even swimming during the summer months. The lake is home to various fish species, particularly pike, making it a popular destination for anglers. The shores of the lake provide a peaceful setting for camping, hiking, and horseback riding, with the calm waters reflecting the surrounding volcanic landscape, creating postcard-worthy views. The area is also rich in wildlife, and visitors can often spot eagles, marmots, and a variety of bird species.'),
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
