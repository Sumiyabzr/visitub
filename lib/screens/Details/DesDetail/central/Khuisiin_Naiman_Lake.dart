import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Khuisiin_Naiman_Lake extends StatefulWidget {
  const Khuisiin_Naiman_Lake({super.key});

  @override
  State<Khuisiin_Naiman_Lake> createState() => _Khuisiin_Naiman_LakeState();
}

class _Khuisiin_Naiman_LakeState extends State<Khuisiin_Naiman_Lake> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Central-Mongolia/Khuisiin Naiman Lake/khuisiin8Lake-9.jpg',
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
                    'Khuisiin Naiman Lake',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Khuisiin Naiman Lake is a hidden gem in the heart of Mongolia’s Khangai Mountains, located about 35 km southwest of Orkhon Valley. This stunning, remote area is made up of eight interconnected freshwater lakes, each formed by volcanic activity hundreds of years ago. Surrounded by beautiful forests, rugged mountains, and rolling meadows, the lakes offer some of the most breathtaking scenery in all of Mongolia. The Khuisiin Naiman Lakes are a great destination for travelers seeking adventure and peace in nature. The lakes sit at an elevation of about 2,400 meters, and getting there requires a bit of effort—you can only reach the area by horseback or on foot, making it a truly off-the-beaten-path experience. The journey itself is part of the adventure, taking you through beautiful valleys and mountain passes where you’ll feel like you’ve stepped back in time. Once you arrive, the area around the lakes is perfect for camping, fishing, and hiking. The calm, mirror-like waters reflect the surrounding mountains and trees, making it an ideal place for photographers and nature lovers. It’s also a great spot for birdwatching, as the lakes are home to a variety of bird species. There are also nomadic herder families who live around the lakes, offering visitors a chance to stay in gers and experience traditional Mongolian life. You can enjoy horseback riding in the area, learning about nomadic culture, and sharing meals with the locals, who are always happy to welcome visitors to their remote home. The Khuisiin Naiman Lakes are part of the larger Naiman Nuur Nature Reserve, which was established to protect the area’s natural beauty and biodiversity. Because of its remote location and lack of infrastructure, the area has remained pristine and unspoiled, offering visitors a true wilderness experience. For those who love adventure, pristine nature, and want to experience a part of Mongolia that few tourists ever see, Khuisiin Naiman Lake is an unforgettable destination.'),

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
