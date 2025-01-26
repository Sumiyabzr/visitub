import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dadal_Soum extends StatefulWidget {
  const Dadal_Soum({super.key});

  @override
  State<Dadal_Soum> createState() => _Dadal_SoumState();
}

class _Dadal_SoumState extends State<Dadal_Soum> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/DadalSoum-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/DadalSoum-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/DadalSoum-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/DadalSoum-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/DadalSoum-5.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/CHinggis KHaan Statue/CHinggisKHaanStatue-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/CHinggis KHaan Statue/CHinggisKHaanStatue-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/CHinggis KHaan Statue/CHinggisKHaanStatue-3.jpg',
  ];

  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/Shamanistic Ceremonial monument/ShamanisticCeremonalMonument-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/Shamanistic Ceremonial monument/ShamanisticCeremonalMonument-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Dadal Soum/Shamanistic Ceremonial monument/ShamanisticCeremonalMonument-3.jpg',
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
                    'Dadal	Soum',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Dadal Soum, nestled in the northeastern part of Khentii Province, is a picturesque town with deep historical significance and natural beauty. Renowned as the probable birthplace of Genghis Khan, the area around Dadal, especially Deluun Boldog, holds a special place in Mongolian history and culture. Surrounded by the lush forests, rolling hills, and pristine rivers of the Khentii Mountains, Dadal offers a tranquil retreat from Mongolia’s expansive steppe and desert landscapes. The nearby Onon River, one of Mongolia’s most important waterways, enhances the area’s natural charm. Visitors to Dadal are drawn to its historical landmarks, such as the Genghis Khan memorial sites, and its natural offerings, perfect for hiking, horseback riding, and camping. With its combination of cultural heritage and breathtaking wilderness, Dadal is a must-visit destination for history enthusiasts and nature lovers alike.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Chinggis Khaan Statue',
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
                      ' Located in the vicinity of Dadal Soum, the Chinggis Khaan Statue is a powerful symbol of Mongolia’s historical pride and reverence for its legendary leader. The statue commemorates Genghis Khan’s extraordinary achievements in uniting the Mongolian tribes and creating one of the largest empires in history. Positioned amidst the serene beauty of the Khentii Mountains, the monument serves as a focal point for visitors exploring the region. It is not only a place of remembrance but also a testament to Mongolians rich cultural and historical legacy. Travelers often visit the statue as part of their journey to explore the broader heritage of Genghis Khan’s life and influence. '),
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
                        'Shamanistic Ceremonial monument',
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
                      'Dadal Soum is also home to a Shamanistic Ceremonial Monument, reflecting the spiritual practices that have been part of Mongolian culture for centuries. Shamanism, deeply rooted in the beliefs of Mongolia’s nomadic ancestors, remains a vital part of the nation’s identity. The ceremonial monument serves as a site for rituals and offerings, where visitors can witness or learn about traditional practices connecting the people with nature and their ancestors. Set against the natural beauty of the Khentii Mountains, the monument offers a glimpse into the spiritual traditions that predate and coexist with Buddhism in Mongolia. It is a compelling stop for those interested in Mongolians spiritual and cultural heritage.'),
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
