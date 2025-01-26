import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tsetserleg_City extends StatefulWidget {
  const Tsetserleg_City({super.key});

  @override
  State<Tsetserleg_City> createState() => _Tsetserleg_CityState();
}

class _Tsetserleg_CityState extends State<Tsetserleg_City> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Tsetserleg/Tsetserleg-10.jpg',
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
                    'Tsetserleg City',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Tsetserleg is the charming capital of Arkhangai Province, nestled in a valley between forested hills and the scenic Bulgan Mountain. Known for its picturesque setting and friendly atmosphere, Tsetserleg is one of the most attractive provincial capitals in Mongolia and is often considered a great stopover for travelers exploring the central regions of the country. Its name, Tsetserleg, means "garden" in Mongolian, and with its green surroundings and relaxed vibe, it certainly lives up to that name. One of the highlights of Tsetserleg is the Zaya Gegeenii Monastery, now a museum, which dates back to the 17th century. The monastery once played a significant role in Mongolia’s religious history, serving as a major Buddhist center in the region. Today, visitors can walk through the beautifully restored monastery and learn about Buddhism and the history of Arkhangai. The museum houses religious artifacts, old manuscripts, and Mongolian artwork, giving you a glimpse into the areas rich spiritual past. For those who love the outdoors, Tsetserleg is surrounded by hiking trails that lead up to Bulgan Mountain. From the top, you can enjoy stunning panoramic views of the city and the surrounding valley. It’s a great spot for taking in the fresh air and enjoying Mongolia’s vast landscapes. The city center is compact and easy to explore, with small cafes, local markets, and shops where you can enjoy a taste of local life. Tsetserleg has a relaxed, welcoming feel that makes it an ideal place to stop and rest for a day or two while traveling through central Mongolia. In addition to being a lovely town, Tsetserleg is also a great base for exploring nearby attractions, including the Tsenkher Hot Springs, the Orkhon Valley, and the Khangai Mountains. The nearby Tamir River is also a popular spot for camping, fishing, and picnicking, offering more opportunities to enjoy the region’s natural beauty. Whether you’re interested in history, culture, or simply enjoying the tranquility of a provincial town, Tsetserleg is a peaceful, pleasant stop on any journey through Mongolia. '),

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
