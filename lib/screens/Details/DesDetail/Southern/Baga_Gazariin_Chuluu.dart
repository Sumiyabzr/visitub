import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Baga_Gazariin_Chuluu extends StatefulWidget {
  const Baga_Gazariin_Chuluu({super.key});

  @override
  State<Baga_Gazariin_Chuluu> createState() => _Baga_Gazariin_ChuluuState();
}

class _Baga_Gazariin_ChuluuState extends State<Baga_Gazariin_Chuluu> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Baga Gazriin chuluu/BagaGazriinChuluu-12.jpg',
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
                    'Baga Gazariin Chuluu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Baga Gazariin Chuluu is a stunning granite rock formation located in the Middle Gobi (Dundgovi) Province of Mongolia. This unique landscape, characterized by its dramatic rocky cliffs, scattered boulders, and rugged terrain, is part of the Gobi Desert and is a popular destination for visitors seeking natural beauty and adventure. The area covers about 300 square kilometers and rises up to 1,751 meters at its highest point. Baga Gazariin Chuluu is also rich in history and cultural significance. It is home to several ancient petroglyphs and caves, where Buddhist monks once lived and meditated. One of the most famous spots is a spring known for its healing properties. Visitors can explore the area by hiking or climbing the rock formations, enjoying the beautiful scenery and the vast open spaces of the Mongolian steppe. The site is also notable for its wildlife, as herds of ibex and argali (wild sheep) are often spotted in the area, along with a variety of bird species. For travelers looking to experience a blend of Mongolia’s natural beauty and cultural history, Baga Gazariin Chuluu is a captivating destination in the heart of the Gobi Desert.'),

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
