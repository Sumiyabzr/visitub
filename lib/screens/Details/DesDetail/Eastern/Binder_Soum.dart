import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Binder_Soum extends StatefulWidget {
  const Binder_Soum({super.key});

  @override
  State<Binder_Soum> createState() => _Binder_SoumState();
}

class _Binder_SoumState extends State<Binder_Soum> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller5 = PageController();
  PageController _controller6 = PageController();
  PageController _controller7 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Binder-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Binder-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Binder-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Binder-4.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Great Mongolian Queens_ Palace Complex/GreatMongolianQueens_PalaceComplex-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Great Mongolian Queens_ Palace Complex/GreatMongolianQueens_PalaceComplex-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Great Mongolian Queens_ Palace Complex/GreatMongolianQueens_PalaceComplex-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Great Mongolian Queens_ Palace Complex/GreatMongolianQueens_PalaceComplex-4.jpg',
  ];
  final List<String> Four = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph2/Petrogloph2-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph1/Petroglyph1-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph1/Petroglyph1-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph1/Petroglyph1-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Petroglyph1/Petroglyph1-4.jpg',
  ];
  final List<String> Five = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Yurt Statue/YurtStatue-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Yurt Statue/YurtStatue-2.jpg',
  ];
  final List<String> Six = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Yarguin Khavtsal/YrguinKhavtsal-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Yarguin Khavtsal/YrguinKhavtsal-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Yarguin Khavtsal/YrguinKhavtsal-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Yarguin Khavtsal/YrguinKhavtsal-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Yarguin Khavtsal/YrguinKhavtsal-5.jpg',
  ];
  final List<String> Six1 = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-9.jpg',
  ];
  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Khalkh Gol/Kazakh/Kazakh-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Khalkh Gol/Kazakh/Kazakh-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Khalkh Gol/Kazakh/Kazakh-3.jpg',
  ];

  final List<String> Seven = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Binder/Narsan Oin Khureelen/NarsanOinKhureelen-9.jpg',
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
                    'Binder Soum',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Binder Soum, located in Khentii Province, is a place of immense cultural, historical, and natural significance in Mongolia. This soum (district) is known for its historical ties to Genghis Khan and its pristine natural beauty, featuring stunning landscapes, ancient relics, and landmarks that attract both history enthusiasts and nature lovers.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Great Mongolian Queens Palace Complex',
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
                      'The Great Mongolian Queens Palace Complex is a cultural and historical site in Binder Soum dedicated to celebrating the influential queens and noblewomen of Mongolia’s history, particularly from the era of the Mongol Empire. The complex highlights the roles of women like Börte, the wife of Genghis Khan, and others who shaped Mongolia’s history and governance. Featuring traditional Mongolian architecture, the complex offers visitors a glimpse into the lives, influence, and legacy of these queens. Exhibits and statues within the site provide insights into their significant contributions to Mongolian culture and leadership. Located in the heart of Khentii Province, the birthplace of Genghis Khan, this complex provides a meaningful exploration of Mongolia’s rich history and the prominent roles women played in its past.'),
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
                  // four
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Petroglyphs and Brand Stamps	',
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
                      'Binder Soum is home to an impressive collection of petroglyphs and brand stamps, offering a unique insight into Mongolia’s ancient nomadic culture. Carved into the rocks, these markings include depictions of animals, hunting scenes, and spiritual symbols. The brand stamps, specific to the region, were used by herders to mark their livestock and belongings, showcasing their creativity and practicality. These intricate carvings, alongside the petroglyphs, serve as a testament to the artistic expression and daily lives of Mongolia’s ancestors. Exploring these sites allows visitors to connect with the nomadic traditions and ancient history of the area.'),
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
                                    itemCount: Four.length,
                                    controller: _controller4,
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
                                            Four[index],
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
                                    controller: _controller4,
                                    count: Four.length,
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
                  // five
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Ikh Mongol Ordon (Great Mongol Palace)',
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
                      'The Ikh Mongol Ordon, or Great Mongol Palace, is a newly constructed cultural landmark in Binder Soum. This striking white building blends traditional Mongolian architecture with modern design, symbolizing the enduring legacy of the Mongol Empire. The palace serves as a hub for cultural activities and community events, celebrating the historical importance of Binder Soum as a region deeply connected to Genghis Khan. Visitors can immerse themselves in Mongolia’s rich heritage and enjoy the modern amenities of this grand complex, which contributes to the cultural and economic growth of the area.'),
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
                                    itemCount: Five.length,
                                    controller: _controller5,
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
                                            Five[index],
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
                                    controller: _controller5,
                                    count: Five.length,
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
                  Row(
                    children: [
                      Text(
                        'Yarguin Khavtsal',
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
                      'The Yarguin Khavtsal gorge is a stunning natural wonder in Khentii Province. Known for its dramatic cliffs and rugged beauty, this gorge cuts through the Khentii Mountains, offering breathtaking views and a serene environment. Remote and less-visited, Yarguin Khavtsal is perfect for adventurers seeking solitude in Mongolia’s wilderness. Visitors can hike through the gorge, explore its unique rock formations, and encounter the diverse flora and fauna of the region. Its quiet atmosphere and natural splendor make it an ideal destination for those looking to escape the busier tourist areas.'),
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
                                    itemCount: Six.length,
                                    controller: _controller6,
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
                                            Six[index],
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
                                    controller: _controller6,
                                    count: Six.length,
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Narsan Oin Khureelen	',
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
                      'The Narsan Oin Khureelen is a vast and tranquil pine forest in Khentii Province. With its dense groves of Scots pine trees, the forest offers a refreshing escape and a lush environment for outdoor enthusiasts. Ideal for hiking, camping, and wildlife spotting, the forest features well-marked trails that wind through towering trees and scenic landscapes. The cool, shaded atmosphere and the fresh scent of pine make it a favorite retreat for both locals and visitors. The area’s biodiversity, with numerous native plant and animal species, adds to its charm, making Narsan Oin Khureelen a wonderful destination to connect with Mongolia’s natural beauty.'),
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
                                    itemCount: Seven.length,
                                    controller: _controller7,
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
                                            Seven[index],
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
                                    controller: _controller7,
                                    count: Seven.length,
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
                  SizedBox(
                    height: 15,
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
