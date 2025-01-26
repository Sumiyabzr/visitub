import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Khovd_City extends StatefulWidget {
  const Khovd_City({super.key});

  @override
  State<Khovd_City> createState() => _Khovd_CityState();
}

class _Khovd_CityState extends State<Khovd_City> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-13.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-14.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-15.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-16.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-17.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-18.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-19.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-20.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-21.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-22.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Western Mongolia/Khovd/Khovd-23.jpg',
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
                    'Khovd	City',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Khovd is a city in western Mongolia and the capital of Khovd Province. It is located near the foothills of the Altai Mountains and along the Buyant River, making it an important cultural and economic center in the region. Khovd is known for its rich history, as it was once a key hub for trade between Mongolia, Russia, and China. This diversity is creflected in the city’s population, which includes various ethnic groups, such as the Kazakhs, Uriankhai, and Mongols, each contributing to the cultural fabric of the city. Khovd is a gateway to the stunning natural beauty of western Mongolia. The nearby Altai Tavan Bogd National Park and Tsambagarav Mountain are popular destinations for travelers seeking outdoor adventures like trekking, horseback riding, and wildlife watching. The afregion is also famous for its Kazakh eagle hunters, who practice the ancient art of hunting with golden eagles, a tradition that continues to thrive in the area. The city itself has a mix of Soviet-era architecture and traditional Mongolian elements. Visitors to Khovd can explore local markets, sample traditional Mongolian and Kazakh foods, and experience the blend of cultures that makes the city unique. Khovd is a vibrant cultural hub that offers a window into Mongolia’s diverse ethnic traditions and breathtaking landscapes.'),

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
