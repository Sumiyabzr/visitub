import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Khuvsgul_Lake extends StatefulWidget {
  const Khuvsgul_Lake({super.key});

  @override
  State<Khuvsgul_Lake> createState() => _Khuvsgul_LakeState();
}

class _Khuvsgul_LakeState extends State<Khuvsgul_Lake> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/KhuvsgulLake-8.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/Khatgal/Khatgal-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/Khatgal/Khatgal-1-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/Khatgal/Khatgal-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/khuvsgul lake/Khatgal/Khatgal-3.jpg',
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
                    'Khusvgul Lake ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Khuvsgul Lake, often called the "Blue Pearl of Mongolia," is one of the country’s most stunning natural wonders. Located in northern Mongolia near the Russian border, it is the largest freshwater lake in Mongolia and holds nearly 70% of the countrys fresh water. The lake stretches over 136 kilometers in length and plunges to depths of 262 meters, making it one of the clearest and purest lakes in the world. Surrounded by the majestic Khuvsgul Mountains and dense taiga forests, the lake offers breathtaking scenery and a tranquil atmosphere. Its crystal-clear waters reflect the surrounding peaks, and visitors can enjoy a variety of activities such as boating, fishing, hiking, and horseback riding. In the winter, the lake freezes over, turning into a winter wonderland where visitors can experience ice festivals and ice skating. Khuvsgul Lake is also home to many ethnic Tsaatan reindeer herders, providing visitors with a unique opportunity to learn about the traditional nomadic culture of Mongolia’s northern tribes. Whether you are seeking adventure or a peaceful retreat in nature, Khuvsgul Lake is a must-visit destination for its unspoiled beauty and rich cultural experiences.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Khatgal',
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
                      ' Khatgal is a small town located on the southern shore of Khuvsgul Lake and serves as the main gateway for travelers visiting the lake. This charming town, founded as a trading post in the early 18th century, is the central hub for tourism in the region, offering accommodations, restaurants, and shops catering to visitors. Khatgal is an excellent base for exploring the beauty of Khuvsgul Lake and the surrounding wilderness. It’s where most tours and activities around the lake begin, including boat trips, hiking excursions, and horseback riding. During the summer, the town comes alive with tourists, and local ger camps provide visitors with the opportunity to stay in traditional Mongolian dwellings. For those interested in experiencing the rich cultural traditions of the Tsaatan reindeer herders or simply enjoying the pristine nature of Mongolia’s northern taiga, Khatgal offers a comfortable and scenic entry point to one of the country’s most beloved natural areas. '),
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
