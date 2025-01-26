import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ikh_Burkhant_Complex extends StatefulWidget {
  const Ikh_Burkhant_Complex({super.key});

  @override
  State<Ikh_Burkhant_Complex> createState() => _Ikh_Burkhant_ComplexState();
}

class _Ikh_Burkhant_ComplexState extends State<Ikh_Burkhant_Complex> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Ikh Burkhant Complex/IkhBurkhantComplex-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Ikh Burkhant Complex/IkhBurkhantComplex-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Ikh Burkhant Complex/IkhBurkhantComplex-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Ikh Burkhant Complex/IkhBurkhantComplex-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Ikh Burkhant Complex/IkhBurkhantComplex-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Ikh Burkhant Complex/IkhBurkhantComplex-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Eastern Mongolia/Ikh Burkhant Complex/IkhBurkhantComplex-7.jpg',
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
                    'Ikh Burkhant Complex  ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'The Ikh Burkhant Complex is a culturally significant site located in Dornod Province in eastern Mongolia. This remarkable site is home to an enormous stone carving of a Buddha lying on its side, known as the Ikh Burkhant Statue. The statue, carved directly into a hillside, measures over 30 meters in length and depicts the Buddha in a reclining position, symbolizing his transition into nirvana. Built during the 18th century, the Ikh Burkhant Complex was commissioned by the local Buryat community and has since become a revered spiritual site. The area surrounding the statue is dotted with smaller stupas and Buddhist monuments, and it serves as a place for pilgrimage and meditation. The peaceful, remote location adds to its spiritual ambiance, offering visitors a chance to reflect and connect with Mongolia’s deep-rooted Buddhist traditions. The complex is also situated near the scenic Onon River and is surrounded by Mongolia’s wide, open steppe, making it not only a significant religious site but also a beautiful natural destination for travelers. The combination of spiritual history and natural beauty makes the Ikh Burkhant Complex a unique and tranquil site to visit in eastern Mongolia.'),

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
