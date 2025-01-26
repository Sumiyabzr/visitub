import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ErdeneZuu extends StatefulWidget {
  const ErdeneZuu({super.key});

  @override
  State<ErdeneZuu> createState() => _ErdeneZuuState();
}

class _ErdeneZuuState extends State<ErdeneZuu> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-5.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-13.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-14.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-15.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-16.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-17.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Erdenezuu Monastery/ErdenezuuKhiid-18.jpg',
  ];
  final List<String> Four = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Khar Balgas/KharBagas-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Khar Balgas/KharBalgas-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Khar Balgas/KharBalgas-3.jpg',
  ];
  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/KharKhorin/Kharkhorin Sum/KharkhorinSum-5.jpg',
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
                    'Kharkhorin',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Kharkhorin, once the ancient capital of the Mongol Empire under Genghis Khan, is a place steeped in history. Located in the Orkhon Valley, which is a UNESCO World Heritage Site, Kharkhorin was founded in the early 13th century and became the political and cultural heart of the Mongol Empire. Today, the small town of Kharkhorin stands where the once-great city did, and though much of the original capital has been lost to time, the area remains a vital link to Mongolia’s past. Visitors come here to explore the ruins, visit the Erdene Zuu Monastery, and imagine the grandeur of the Mongol Empire in its heyday.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Erdenezuu Monastery',
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
                      'At the heart of Kharkhorin lies the Erdene Zuu Monastery, one of Mongolia’s most important religious sites. Founded in 1585 by Abtai Sain Khan, Erdene Zuu is the oldest surviving Buddhist monastery in Mongolia and is surrounded by 108 stupas. The monastery was built using materials from the ruins of Kharkhorin, and it became a center for Buddhist learning and spirituality. Though many of its temples were destroyed during the communist purges of the 1930s, some parts of the monastery have survived, and today it is an active place of worship as well as a museum. Visitors can walk through the beautiful courtyards, visit the temples, and see relics of Mongolian Buddhism, including statues of Buddha, intricate thangkas (Buddhist paintings), and sacred scriptures. The stupas and temple walls are a stunning contrast to the vast steppe surrounding the monastery, and it’s easy to feel a deep sense of peace and history as you walk through the grounds. This is a must-visit for anyone interested in Mongolia’s spiritual history or the spread of Buddhism across Asia.'),
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
                        'Kharkhorin Sum',
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
                      'The modern town of Kharkhorin sits on the site of the ancient capital, but today its a small and quiet place, with much of its heritage lying beneath the ground. The Kharkhorin Museum is one of the town’s highlights, showcasing artifacts that have been excavated from the ancient city, including ceramics, stone inscriptions, and tools from the days of Genghis Khan’s empire. The museum provides a fascinating glimpse into what life might have been like in the ancient capital. In Kharkhorin, you’ll also find local markets, ger camps, and small restaurants that cater to both locals and travelers. The town is a great base for exploring the surrounding historical sites and natural beauty of the Orkhon Valley.'),
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
                  Row(
                    children: [
                      Text(
                        'Khar Balgas Ruins',
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
                      'Just outside of Kharkhorin are the Khar Balgas Ruins, the remnants of an ancient city that predates the Mongol Empire. Khar Balgas, which translates to "Black City", was the capital of the Uyghur Khaganate in the 8th to 9th centuries. The city was a major center of Uyghur culture, commerce, and religion before it was eventually abandoned. Although not much remains of Khar Balgas today, the earthworks and scattered ruins offer an intriguing look into the past. The site is a quiet and reflective place, surrounded by the wide-open steppe. It’s a spot for those interested in archaeology and early Mongolian history, offering a unique perspective on the different civilizations that have ruled the region over the centuries.'),
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
