import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ikh_Gazariin_Chuluu extends StatefulWidget {
  const Ikh_Gazariin_Chuluu({super.key});

  @override
  State<Ikh_Gazariin_Chuluu> createState() => _Ikh_Gazariin_ChuluuState();
}

class _Ikh_Gazariin_ChuluuState extends State<Ikh_Gazariin_Chuluu> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-13.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-14.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-15.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-16.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ikh gazriin chuluu/IkhGazriinChuluu-17.jpg',
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
                    'Ikh Gazariin Chuluu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Ikh Gazariin Chuluu is a massive granite rock formation located in the Gobi-Ugtaal District of Dundgovi Province, Mongolia. Known for its towering cliffs and rugged boulders, this stunning landscape covers a vast area and rises dramatically from the surrounding desert steppe. The rock formations reach heights of up to 1,706 meters, making Ikh Gazariin Chuluu an impressive natural landmark in the central Gobi region. The area is famous for its caves, some of which were used by Buddhist monks for meditation. One such notable cave is Tsagaan Uuryn Agui, a cave where monks sought spiritual retreat. The site is also dotted with petroglyphs and ancient inscriptions, adding to its cultural and historical significance. Ikh Gazariin Chuluu is a great destination for hiking, rock climbing, and exploring the unique granite formations. Visitors often come here to experience the serene beauty of the landscape, which contrasts sharply with the surrounding flat steppe. Wildlife such as ibex and argali sheep are commonly seen, as well as various bird species. For those looking to discover the wild, untouched beauty of Mongolia’s Gobi Desert, Ikh Gazariin Chuluu offers a perfect blend of natural wonder and cultural intrigue, making it a must-visit destination for adventurers and nature lovers alike.'),

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
