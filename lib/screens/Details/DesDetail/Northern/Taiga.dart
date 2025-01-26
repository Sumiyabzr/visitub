import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Taiga extends StatefulWidget {
  const Taiga({super.key});

  @override
  State<Taiga> createState() => _TaigaState();
}

class _TaigaState extends State<Taiga> {
  PageController _controller1 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Taiga-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Taiga-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Taiga-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Taiga-4.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-13.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Tsaatan People/TsaatanPeople-14.jpg',
  ];

  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Ulaan Uul/UlaanUulSoum-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Ulaan Uul/UlaanUulSoum-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Ulaan Uul/UlaanUulSoum-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Ulaan Uul/UlaanUulSoum-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Ulaan Uul/UlaanUulSoum-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Taiga/Ulaan Uul/UlaanUulSoum-6.jpg',
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
                    'Taiga',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'The Taiga in northern Mongolia is a vast, pristine wilderness characterized by dense coniferous forests, rivers, and rolling mountains. This remote region, bordering Siberia, is one of the last untouched areas of the world and is home to some of Mongolia’s most unique cultural groups and stunning landscapes. The Mongolian Taiga is particularly famous for being the home of the Tsaatan reindeer herders and the expansive Darkhad Valley.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Tsaatan People',
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
                      ' The Tsaatan people are an indigenous community living in the Taiga region, known for their unique nomadic lifestyle centered around herding reindeer. As one of the last groups of reindeer herders in the world, the Tsaatan have maintained their traditional way of life for centuries, relying on their reindeer for transportation, milk, and fur. They live in ortz (traditional teepee-like tents) and move frequently to ensure their herds have sufficient grazing grounds. Visitors to the Taiga can meet the Tsaatan and experience their daily life, learning about their deep connection to nature and spiritual practices rooted in shamanism. The Tsaatan offer a glimpse into a way of life that has remained largely unchanged despite modern pressures, making them a symbol of cultural preservation and resilience. '),
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
                        'Ulaan Uul',
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
                      'Ulaan Uul is a picturesque village located in the northern reaches of Mongolia, serving as a serene gateway to the pristine Taiga and Darkhad Valley regions. Surrounded by dense forests, rivers, and rolling mountains, the village offers a glimpse into the traditional nomadic lifestyle of the region’s inhabitants. Known for its tranquil beauty, Ulaan Uul is a popular stop for travelers exploring the nearby Tsaatan reindeer herders, shamanic traditions, and the untouched wilderness of the Taiga. This remote settlement provides a perfect starting point for those seeking adventure and cultural immersion in northern Mongolia.'),
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
