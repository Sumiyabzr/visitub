import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tuvkhun_Monastery extends StatefulWidget {
  const Tuvkhun_Monastery({super.key});

  @override
  State<Tuvkhun_Monastery> createState() => _Tuvkhun_MonasteryState();
}

class _Tuvkhun_MonasteryState extends State<Tuvkhun_Monastery> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tuvkhun Khiid/TuvkhunKhiid-12.jpg',
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
                    'Tuvkhun Monastery',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Perched high in the Khangai Mountains, Tuvkhun Monastery is one of the most peaceful and spiritually significant places in Mongolia. Located about 60 km southwest of Kharkhorin, this ancient monastery sits on a forested mountain ridge, surrounded by dense pine forests and offering breathtaking views of the surrounding landscape. At an altitude of 2,300 meters, the monastery feels like a hidden sanctuary, far away from the hustle of daily life. Tuvkhun Monastery was founded in 1653 by Zanabazar, Mongolia’s first spiritual leader and a renowned artist and scholar. He chose this remote location as a retreat for meditation and creative work, and it was here that he is believed to have created some of his most famous Buddhist art. The monastery became a spiritual center for Mongolian Buddhism, and its remote location made it a perfect place for quiet reflection and meditation. To reach Tuvkhun Monastery, visitors must hike through the forest, a journey that is part of the experience. The trail leading to the monastery is peaceful, surrounded by nature, with the sounds of birds and wind in the trees. Once you reach the top, the sense of tranquility is overwhelming. The monastery itself is small but beautifully crafted, and there are several caves nearby where monks would retreat for solitary meditation. One of the most unique aspects of Tuvkhun Monastery is its connection to Mongolian history and spirituality. As you explore the grounds, you’ll find places where Zanabazar himself is said to have meditated and created his art. The monastery offers a spiritual and historical insight into Mongolia’s Buddhist past and its continued significance today. Visitors often come to Tuvkhun Monastery not only for its religious importance but also for the stunning panoramic views. On clear days, you can see vast stretches of the Orkhon Valley below, with rolling hills and forests stretching as far as the eye can see. It’s a perfect place to reflect, meditate, or simply enjoy the beauty of nature. Whether you’re drawn to its spiritual significance, its historical importance, or the incredible views, Tuvkhun Monastery is a place that leaves a lasting impression on everyone who visits.'),

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
