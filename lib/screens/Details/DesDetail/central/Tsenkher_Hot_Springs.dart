import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tsenkher_Hot_Springs extends StatefulWidget {
  const Tsenkher_Hot_Springs({super.key});

  @override
  State<Tsenkher_Hot_Springs> createState() => _Tsenkher_Hot_SpringsState();
}

class _Tsenkher_Hot_SpringsState extends State<Tsenkher_Hot_Springs> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsenkher Hot Spring/tsenkherHotSpring-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsenkher Hot Spring/tsenkherHotSpring-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsenkher Hot Spring/tsenkherHotSpring-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsenkher Hot Spring/tsenkherHotSpring-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsenkher Hot Spring/tsenkherHotSpring-5.jpg',
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
                    'Tsenkher Hot Springs',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Hidden in the forested hills of Arkhangai Province, Tsenkher Hot Springs is one of Mongolia’s most popular natural hot springs, renowned for its healing properties and beautiful surroundings. Located about 30 km south of Tsetserleg, these hot springs offer visitors a relaxing and rejuvenating experience after days of travel through Mongolia’s rugged terrain. The Tsenkher Hot Springs are famous for their naturally heated water, which flows from the ground at temperatures reaching 86°C (187°F). The water is rich in minerals, which locals believe have healing benefits for everything from muscle aches to joint pain. Whether or not you’re looking for a healing experience, the hot springs provide the perfect place to soak, relax, and unwind while enjoying the beauty of the surrounding landscape. There are several ger camps around the springs where visitors can stay, each offering access to the hot spring pools. Most of these camps have outdoor pools, allowing you to enjoy the warm waters while surrounded by nature. Imagine soaking in a hot spring with the crisp mountain air around you and the stars overhead at night—it’s a peaceful escape from the everyday world. The area around Tsenkher Hot Springs is also great for hiking and horseback riding, with scenic trails winding through the surrounding forests and hills. You can explore the nearby valleys, visit nomadic families, or simply enjoy a peaceful walk through nature. Many visitors combine their visit to the hot springs with other activities in the region, making it a perfect stop for anyone traveling through central Mongolia. Whether you come for the healing waters, the fresh mountain air, or the opportunity to relax in a natural setting, Tsenkher Hot Springs is a must-visit destination for those seeking a peaceful and rejuvenating experience.'),

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
