import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ongi_Monastery extends StatefulWidget {
  const Ongi_Monastery({super.key});

  @override
  State<Ongi_Monastery> createState() => _Ongi_MonasteryState();
}

class _Ongi_MonasteryState extends State<Ongi_Monastery> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Ongi Monastery/OngiMonastery-11.jpg',
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
                    'Ongi Monastery',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Ongi Monastery is a historic Buddhist monastery complex located on the banks of the Ongiin River in Dundgovi Province. Once one of the largest monasteries in Mongolia, Ongi was founded in the 17th century and consisted of two main temple complexes on both sides of the river. At its peak, the monastery housed over 1,000 monks and played a significant role in Mongolia’s religious and cultural life. Unfortunately, Ongi Monastery was largely destroyed during the communist purges of the 1930s, and today, visitors can explore the atmospheric ruins of the temples, stupas, and other structures scattered across the riverbanks. Despite its destruction, Ongi Monastery has retained its spiritual significance, and a small part of the complex has been restored, with a few monks now residing there. The serene setting of the Ongiin River, surrounded by arid hills and desert landscapes, makes it a peaceful and reflective stop for travelers. Visitors often stay at nearby ger camps, where they can enjoy the quiet beauty of the surrounding landscape while learning about the rich history of Ongi Monastery and its importance in Mongolians Buddhist heritage.'),

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
