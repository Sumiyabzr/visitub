import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Aglag_Buteel_Monastery extends StatefulWidget {
  const Aglag_Buteel_Monastery({super.key});

  @override
  State<Aglag_Buteel_Monastery> createState() => _Aglag_Buteel_MonasteryState();
}

class _Aglag_Buteel_MonasteryState extends State<Aglag_Buteel_Monastery> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Aglag Buteeliin Khiid/AglagButeeliinKhiid-11.jpg',
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
                    'Aglag Buteel Monastery',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Aglag Buteel Monastery is one of the most unique and peaceful places you can visit in Mongolia. Located about 100 km north of Ulaanbaatar, near the town of Bornuur, this monastery isn’t just a spiritual retreat—it’s also an incredible artistic creation. It was founded by a famous Mongolian lama and artist, Gurunba Lama, in 2011, who designed the monastery to be a place of both meditation and creative expression. What makes Aglag Buteel so special is how it blends Buddhism with nature and art. The entire monastery is surrounded by carefully sculpted stones and statues, which represent various animals and spiritual symbols. As you walk around, it almost feels like you’re in a giant outdoor art gallery, with the natural landscape perfectly complementing the intricate designs. One of the highlights of the monastery is the meditation path that winds up through the forest behind the main building. As you follow the path, you’ll find hidden carvings and rock sculptures, each one designed to inspire mindfulness and reflection. It’s a peaceful hike, and once you reach the top, you’re rewarded with a stunning panoramic view of the surrounding hills and valleys. The main temple itself is beautiful, with colorful murals and Buddhist symbols. Inside, you’ll find an impressive statue of Buddha, as well as many relics and artifacts that tell the story of Mongolia’s deep spiritual traditions. For those interested in Buddhist art, nature, and spirituality, Aglag Buteel Monastery is a perfect day trip from Ulaanbaatar. It’s a place where you can not only experience the tranquility of a monastery but also appreciate the creativity and vision that went into building this sacred space.'),

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
