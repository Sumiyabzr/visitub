import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Moltsog_Sand_Dunes extends StatefulWidget {
  const Moltsog_Sand_Dunes({super.key});

  @override
  State<Moltsog_Sand_Dunes> createState() => _Moltsog_Sand_DunesState();
}

class _Moltsog_Sand_DunesState extends State<Moltsog_Sand_Dunes> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Moltsog Sand Dunes/Moltsog-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Moltsog Sand Dunes/Moltsog-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Moltsog Sand Dunes/Moltsog-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Moltsog Sand Dunes/Moltsog-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Moltsog Sand Dunes/Moltsog-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Moltsog Sand Dunes/Moltsog-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Moltsog Sand Dunes/Moltsog-7.jpg',
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
                    'Moltsog Sand Dunes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Moltsog Sand Dunes are a picturesque stretch of sand dunes located in the Gobi Desert near the Flaming Cliffs in Umnugovi Province. Unlike the towering Khongoryn Els Dunes, the Moltsog Dunes are smaller but easily accessible, offering visitors a chance to experience the beauty of Mongolia’s desert landscape without extensive travel. These dunes are ideal for camel trekking, hiking, or simply exploring the serene and quiet surroundings. The nearby nomadic families offer opportunities for visitors to learn about Mongolian desert life and experience traditional ger camps. The Moltsog Sand Dunes provide a peaceful, scenic spot for those looking to immerse themselves in the tranquil beauty of the Gobi Desert while enjoying activities like camel riding or sand dune exploration.'),

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
