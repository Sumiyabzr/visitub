import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Baldan_Bereeven_Monastery extends StatefulWidget {
  const Baldan_Bereeven_Monastery({super.key});

  @override
  State<Baldan_Bereeven_Monastery> createState() =>
      _Baldan_Bereeven_MonasteryState();
}

class _Baldan_Bereeven_MonasteryState extends State<Baldan_Bereeven_Monastery> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Baldan Bereeven Monastery/Baldan Bereeven Monastery-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Baldan Bereeven Monastery/Baldan Bereeven Monastery-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Baldan Bereeven Monastery/Baldan Bereeven Monastery-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Baldan Bereeven Monastery/Baldan Bereeven Monastery-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Baldan Bereeven Monastery/Baldan Bereeven Monastery-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Baldan Bereeven Monastery/Baldan Bereeven Monastery-6.jpg',
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
                    'Baldan Bereeven Monastery',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Baldan Bereeven Monastery is a historically significant Buddhist monastery located in the Khentii Province of Mongolia, nestled in the serene valley of the Bereeven Mountains. Founded in the mid-18th century, it was once one of the largest and most influential monasteries in Mongolia, housing around 8,000 monks at its peak. The monastery was a major center for Mongolian Buddhism, particularly for the Gelugpa school. The architecture of Baldan Bereeven is stunning, with its temples built in harmony with the surrounding mountains. The main temple, Tsogchin Dugan, is an impressive structure, though much of the complex was destroyed during the communist purges of the 1930s. However, some of the buildings and ruins have been restored, and efforts continue to revive the site as a spiritual and historical center. Visitors to Baldan Bereeven Monastery can explore the peaceful surroundings, hike the nearby mountains, and view the impressive rock carvings and mani stones (prayer stones) that adorn the area. The landscape around the monastery is known for its beauty, featuring rolling hills, forests, and sacred rock formations that add to the spiritual atmosphere. The site is not only a place of worship but also a tranquil destination for those interested in Mongolians rich religious and cultural history.'),

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
