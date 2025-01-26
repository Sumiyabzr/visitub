import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Taikhar_Rock extends StatefulWidget {
  const Taikhar_Rock({super.key});

  @override
  State<Taikhar_Rock> createState() => _Taikhar_RockState();
}

class _Taikhar_RockState extends State<Taikhar_Rock> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Taikhar rock/TakharRock-9.jpg',
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
                    'Taikhar Rock',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Taikhor Rock is a striking natural formation located near Tsetserleg in Arkhangai Province. This massive granite rock stands out dramatically against the surrounding landscape, drawing visitors with its unusual shape and the ancient petroglyphs carved into its surface. The rock is a well-known landmark in the region, often visited by travelers looking to explore Mongolia’s natural and historical wonders. Taikhor Rock is steeped in Mongolian history. The carvings on its surface are believed to date back to the Bronze Age, making this site an important place for archaeologists and historians alike. These ancient petroglyphs depict animals, hunting scenes, and symbols, offering a glimpse into the lives of the early nomadic peoples who roamed these lands thousands of years ago. As you walk around the rock, it’s easy to imagine how this site must have been a meeting place for ancient communities, perhaps serving spiritual or ceremonial purposes. In addition to its historical significance, Taikhor Rock offers a sense of serenity and solitude. The surrounding landscape is typical of Arkhangai Province, with rolling green hills and distant mountain ranges. It’s a peaceful spot where visitors can take a moment to connect with Mongolia’s vast, open spaces. For those interested in photography, Taikhor Rock provides a unique subject, especially when contrasted with the surrounding natural beauty. The area around Taikhor Rock is ideal for hiking and exploring, and it’s easy to combine a visit here with other nearby attractions, such as Tsetserleg City or Tsenkher Hot Springs. The site is not far from the main road, making it a convenient stop for travelers exploring central Mongolia. Whether you’re interested in ancient history, stunning landscapes, or simply want to experience a lesser-known gem of Mongolia, Taikhor Rock is well worth a visit. '),

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
