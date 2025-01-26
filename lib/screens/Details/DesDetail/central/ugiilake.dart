import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ugiilake extends StatefulWidget {
  const Ugiilake({super.key});

  @override
  State<Ugiilake> createState() => _UgiilakeState();
}

class _UgiilakeState extends State<Ugiilake> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Ugii Lake/UgiiLake-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Ugii Lake/UgiiLake-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Ugii Lake/UgiiLake-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Ugii Lake/UgiiLake-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Ugii Lake/UgiiLake-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Ugii Lake/UgiiLake-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Ugii Lake/UgiiLake-7.jpg',
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
                    'Ugii Lake',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Ugii Lake is one of Mongolia’s most beautiful and serene freshwater lakes, located in Arkhangai Province, about 330 km west of Ulaanbaatar. Nestled in the wide-open steppe, the lake covers an area of 25 square kilometers and is known for its crystal-clear waters and abundant birdlife. It’s a peaceful place where you can relax and connect with nature, making it a great destination for anyone looking to escape the hustle and bustle of the city. Ugii Lake is famous for its birdwatching opportunities. Every year, hundreds of species of migratory birds pass through the area, including swans, geese, pelicans, and rare cranes. The lake’s quiet shores provide the perfect spot for birdwatchers and nature enthusiasts to observe these birds in their natural habitat, especially in the spring and autumn. The lake is also known for its fishing, with an abundance of fish such as pike and perch. In fact, Ugii Lake has become a popular spot for sport fishing, and both locals and tourists come here to try their luck at catching some of the lake’s fish. You can rent fishing equipment and even go out on a boat to enjoy a day on the water. For those who prefer to stay on land, the gently sloping shores of the lake are perfect for a quiet walk or a picnic with stunning views of the surrounding countryside. Staying in one of the local ger camps by the lake is a great way to experience traditional Mongolian hospitality while enjoying the natural beauty of the area. You’ll wake up to the sound of birds and fall asleep under the vast Mongolian sky. The area around Ugii Lake is also rich in history. Archaeologists have discovered ancient tombs and stone monuments nearby, hinting at the presence of nomadic peoples who lived in the region long ago. This blend of natural beauty and history makes Ugii Lake a special place to visit. Whether you’re into fishing, birdwatching, or just looking for a peaceful retreat, Ugii Lake offers a perfect balance of relaxation and adventure in one of Mongolia’s most tranquil settings.'),

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
