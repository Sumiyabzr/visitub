import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Chuluut_Valley extends StatefulWidget {
  const Chuluut_Valley({super.key});

  @override
  State<Chuluut_Valley> createState() => _Chuluut_ValleyState();
}

class _Chuluut_ValleyState extends State<Chuluut_Valley> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Chuluut Valley/ChuluutValley-13.jpg',
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
                    'Chuluut Valley',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      '  Chuluut Valley, carved by the Chuluut River, is one of the most stunning natural landscapes in Arkhangai Province. This deep volcanic canyon stretches for about 25 kilometers, with sheer basalt cliffs rising up to 50 meters on either side of the river. The valley offers breathtaking views, making it a popular destination for nature lovers, photographers, and those seeking a peaceful escape into Mongolia’s wild beauty. The Chuluut River cuts through ancient lava flows, creating the dramatic scenery that makes the valley so remarkable. As you walk along the canyon’s edge or hike down to the river, you’ll be surrounded by rugged, towering rock formations and clear blue skies. The best time to visit is during the warmer months, when the river flows strongly, and the surrounding area is lush with greenery. For adventure seekers, Chuluut Valley is perfect for hiking and fishing. The river is home to taimen, grayling, and other freshwater fish, making it a popular spot for anglers. The cliffs also offer excellent opportunities for rock climbing if youre up for a challenge. The valley is quiet and peaceful, making it an ideal place to spend time in nature, far from the crowds. Nomadic families often set up their summer gers in the surrounding areas, and visitors can experience traditional Mongolian hospitality. Many visitors choose to camp near the river or stay in nearby ger camps, where you can enjoy the serene beauty of the valley and the sound of the river flowing through the canyon. Chuluut Valley is not just about its natural beauty—its location in Arkhangai Province makes it a great stop on a journey through central Mongolia. It’s easily combined with visits to other nearby attractions, such as the Terkhiin Tsagaan Lake (Great White Lake) and Khorgo Volcano, creating a perfect route for exploring Mongolia’s diverse landscapes. Whether you’re interested in outdoor activities like hiking and fishing, or simply want to relax and take in the beauty of the Mongolian wilderness, Chuluut Valley offers a memorable experience in one of the country’s most scenic regions.  '),

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
