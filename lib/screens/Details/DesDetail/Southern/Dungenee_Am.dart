import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dungenee_Am extends StatefulWidget {
  const Dungenee_Am({super.key});

  @override
  State<Dungenee_Am> createState() => _Dungenee_AmState();
}

class _Dungenee_AmState extends State<Dungenee_Am> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dungenee/Dungenee-10.jpg',
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
                    'Dungenee Am',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Dungenee Am is a striking gorge located within the Gobi Gurvansaikhan National Park in southern Mongolia. Similar to the famous Yolyn Am, this gorge is carved through the rugged mountains of the park, offering dramatic landscapes of steep cliffs and narrow passageways. The gorge is a great destination for hikers looking to experience the raw beauty of the Gobi Deserts hidden valleys and canyons. While Dungenee Am is less well-known than Yolyn Am, it offers a quieter, more secluded experience for those seeking solitude and a closer connection with nature. The cool, shaded environment of the gorge provides a refreshing escape from the heat of the desert, and its cliffs are home to various wildlife, including ibex and vultures. For adventurers exploring the Gobi Gurvansaikhan National Park, Dungenee Am is a rewarding stop, showcasing the natural beauty and diversity of the Gobi Deserts landscapes. Whether you are hiking through the canyon or simply enjoying the dramatic views, the gorge is a peaceful and stunning destination.'),

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
