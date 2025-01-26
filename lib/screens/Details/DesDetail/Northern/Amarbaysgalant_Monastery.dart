import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Amarbaysgalant_Monastery extends StatefulWidget {
  const Amarbaysgalant_Monastery({super.key});

  @override
  State<Amarbaysgalant_Monastery> createState() =>
      _Amarbaysgalant_MonasteryState();
}

class _Amarbaysgalant_MonasteryState extends State<Amarbaysgalant_Monastery> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-13.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-14.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-15.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-16.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-17.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-18.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-19.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-20.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Northern  Mongolia/Amarbaysgalant Monastery/AmarbaysgalantMonastery-21.jpg',
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
                    'Amarbaysgalant Monastery ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Amarbaysgalant Monastery, located in the secluded Iven Valley of Selenge Province in northern Mongolia, is one of the country’s most important and well-preserved Buddhist monasteries. Built between 1727 and 1736, it was dedicated to the great Mongolian Buddhist teacher Zanabazar, the first spiritual leader of Mongolian Buddhism. The monastery was commissioned by the Qing Emperor to honor Zanabazar, and it became a significant center for Buddhism in Mongolia. The monastery s architecture is a stunning example of classical Tibetan-style design with strong influences from Chinese and Mongolian architectural traditions. The complex originally consisted of over 40 temples, but many were destroyed during the communist purges of the 1930s. Today, around 28 buildings remain, which have been carefully restored, preserving the intricate woodwork and delicate details that make Amarbaysgalant such an architectural masterpiece. Nestled in a peaceful valley, Amarbaysgalant Monastery offers visitors a tranquil setting where they can explore the spiritual history of Mongolia, enjoy the serene landscape, and experience the monastery’s rich cultural and religious significance. It remains an active place of worship, with monks living and practicing at the site, making it not only a historical monument but also a living center of Buddhist practice.'),

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
