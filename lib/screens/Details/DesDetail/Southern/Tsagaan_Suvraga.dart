import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tsagaan_Suvraga extends StatefulWidget {
  const Tsagaan_Suvraga({super.key});

  @override
  State<Tsagaan_Suvraga> createState() => _Tsagaan_SuvragaState();
}

class _Tsagaan_SuvragaState extends State<Tsagaan_Suvraga> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Tsagaan Suvraga/TsagaanSuvarga-11.jpg',
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
                    'Tsagaan Suvraga',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Tsagaan Suvraga is a stunning and unique geological formation located in Dundgovi Province of southern Mongolia. This site features striking limestone cliffs that have been eroded over millions of years, creating towering, stupa-like formations that resemble ancient Buddhist structures. The cliffs rise up to 30 meters high and stretch for nearly 400 meters, offering a dramatic and surreal landscape of layered rock in shades of white, red, and pink. The cliffs of Tsagaan Suvraga are believed to have once been part of an ancient seabed, and you can still find fossilized shells and marine creatures in the area, highlighting its prehistoric origins. The weathering and erosion over time have sculpted these rock formations into spectacular shapes, making the area a popular destination for photographers and nature lovers. The landscape surrounding Tsagaan Suvraga is part of the Gobi Desert and is characterized by wide, open plains and desert steppe, offering a stark contrast to the towering cliffs. Visitors often hike around the site to explore the formations up close, and the location is particularly beautiful during sunrise and sunset when the colors of the rocks shift with the changing light. Tsagaan Suvraga is a must-see destination for travelers seeking Mongolia’s lesser-known natural wonders and those fascinated by unique geological formations. Its combination of ancient history, scenic beauty, and peaceful isolation makes it one of the highlights of southern Mongolia.'),

                  SizedBox(
                    height: 10,
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
