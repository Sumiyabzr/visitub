import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Khermen_Tsaw extends StatefulWidget {
  const Khermen_Tsaw({super.key});

  @override
  State<Khermen_Tsaw> createState() => _Khermen_TsawState();
}

class _Khermen_TsawState extends State<Khermen_Tsaw> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Khermen Tsaw/KhermenTsav-11.jpg',
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
                    'Khermen Tsaw',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Khermen Tsav is a breathtaking canyon located deep in the Gobi Desert, often referred to as Mongolia’s version of the Grand Canyon. Its towering red and orange cliffs, shaped by millennia of erosion, create a dramatic landscape filled with intricate rock formations and steep ravines. This remote and rugged area is not only visually stunning but also rich in paleontological significance, with numerous dinosaur fossils and ancient bones having been discovered here. Khermen Tsav offers a sense of isolation and grandeur, as the vast, seemingly endless canyon stretches across the desert, providing spectacular views and opportunities for exploration. The striking colors of the cliffs at sunrise and sunset make it a favorite destination for photographers and adventurers. Due to its remoteness, visitors to Khermen Tsav can truly experience the untouched beauty of Mongolia’s Gobi Desert, making it one of the most awe-inspiring and memorable sites in the region.'),

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
