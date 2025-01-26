import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Flaming_Cliffs extends StatefulWidget {
  const Flaming_Cliffs({super.key});

  @override
  State<Flaming_Cliffs> createState() => _Flaming_CliffsState();
}

class _Flaming_CliffsState extends State<Flaming_Cliffs> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (1).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (2).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (3).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (4).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (5).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (7).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (8).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (9).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (10).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (11).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (12).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (13).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (14).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (15).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (16).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (17).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (18).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (19).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Flaming Cliffs/1. Flaming Cliffs/Flaming Cliffs -  (20).jpg',
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
                    'Flaming Cliffs',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Khongor Sand Dunes are among the largest and most impressive sand dunes in Mongolia, located in the Gobi Desert within the Gobi Gurvansaikhan National Park. Stretching for about 180 kilometers in length and rising to heights of 300 meters, these massive dunes are often referred to as the "Singing Dunes" due to the melodic sounds produced by the wind as it moves across the sand. The dunes are bordered by the Khongoryn Gol River, creating a stunning contrast between the lush, green oasis and the vast, golden sands. Visitors to the dunes can experience a variety of activities, including camel trekking, hiking to the dune summits for panoramic views, and sliding down the sandy slopes. The region is also home to nomadic herders who offer ger camp accommodations, allowing travelers to experience traditional Mongolian hospitality. Khongoryn Els Dunes offer an unforgettable desert experience, with their immense scale, natural beauty, and peaceful atmosphere making them a must-visit destination in southern Mongolia.'),

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
