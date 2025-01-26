import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ulaagchnii_Khar_Lake extends StatefulWidget {
  const Ulaagchnii_Khar_Lake({super.key});

  @override
  State<Ulaagchnii_Khar_Lake> createState() => _Ulaagchnii_Khar_LakeState();
}

class _Ulaagchnii_Khar_LakeState extends State<Ulaagchnii_Khar_Lake> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Ulaagchnii Khar Nuur/UlaagchniiKharNuur-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Ulaagchnii Khar Nuur/UlaagchniiKharNuur-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Ulaagchnii Khar Nuur/UlaagchniiKharNuur-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Ulaagchnii Khar Nuur/UlaagchniiKharNuur-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Ulaagchnii Khar Nuur/UlaagchniiKharNuur-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Ulaagchnii Khar Nuur/UlaagchniiKharNuur-6.jpg',
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
                    'Ulaagchnii Khar Lake',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Ulaagchnii Khar Lake is a remote and pristine freshwater lake located in Zavkhan Province in western Mongolia. The lake, covering around 60 square kilometers, is known for its crystal-clear waters and stunning natural surroundings. What makes Ulaagchnii Khar Lake especially captivating is the striking contrast between its deep blue waters and the nearby Bor Khyar sand dunes, where desert and lake meet, creating a surreal and picturesque landscape. The lake sits at an elevation of about 1,400 meters and offers a peaceful escape for those looking to experience Mongolians untouched wilderness. The surrounding area is a mix of steppe, rocky hills, and sand dunes, making it a unique blend of ecosystems. The lake’s calm waters and sandy shores are ideal for relaxation, swimming, and picnicking, while the nearby dunes and hills provide opportunities for hiking and sandboarding. Nomadic herders live in the region, and visitors can stay in ger camps near the lake, offering a chance to experience the local culture and traditional Mongolian hospitality. Ulaagchnii Khar Lake is also a great spot for fishing and birdwatching, with the area being home to various species of fish and migratory birds. Due to its remote location, Ulaagchnii Khar Lake remains a peaceful and less-visited destination, perfect for travelers seeking tranquility and adventure in one of Mongolia’s most unspoiled regions.'),

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
