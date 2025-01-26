import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Mukhar_Shivert_Am extends StatefulWidget {
  const Mukhar_Shivert_Am({super.key});

  @override
  State<Mukhar_Shivert_Am> createState() => _Mukhar_Shivert_AmState();
}

class _Mukhar_Shivert_AmState extends State<Mukhar_Shivert_Am> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAmd-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Mukhar Shivert Am/MukharShivertiinAm-11.jpg',
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
                    'Mukhar Shivert Am',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Mukhar Shivert Am is a hidden gem located within the Gobi Gurvansaikhan National Park in southern Mongolia. This narrow, secluded gorge is famous for its year-round ice field, which persists even during the hot summer months, making it a fascinating natural wonder in the heart of the Gobi Desert. The name "Mukhar Shivert" translates to "dead end with a cold breeze," reflecting the gorge’s natural coolness and its narrow, winding path that ends abruptly. The gorge is surrounded by steep rock walls, creating a shaded, cool environment where ice and snow can survive the harsh desert heat. As visitors hike through the gorge, they are greeted by stunning rock formations and a sense of tranquility in this off-the-beaten-path location. The trek to Mukhar Shivert Am offers a peaceful escape, with opportunities to observe local wildlife, including ibex and various bird species. For travelers looking to experience the lesser-known but equally spectacular parts of the Gobi, Mukhar Shivert Am is an excellent destination, combining natural beauty with a refreshing and surprising coolness amidst the desert landscape.'),

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
