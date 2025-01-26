import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Chinggis_Khaanii_Khuree extends StatefulWidget {
  const Chinggis_Khaanii_Khuree({super.key});

  @override
  State<Chinggis_Khaanii_Khuree> createState() =>
      _Chinggis_Khaanii_KhureeState();
}

class _Chinggis_Khaanii_KhureeState extends State<Chinggis_Khaanii_Khuree> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Chingis haanii khuree/ChingisKhaaniiKhuree-8.jpg',
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
                    'Chinggis Khaanii Khuree',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Chinggis Khaanii Khuree, located near Chinggis Khan International Airport, is a destination that offers visitors a unique introduction to Mongolia’s rich cultural heritage. This traditional ger camp-style complex is designed to resemble the ancient encampments of the Mongol Empire, with modern conveniences that make it an ideal stop for those arriving or departing from Ulaanbaatar. The Khuree features traditional Mongolian gers (yurts) arranged in an authentic layout, providing a picturesque setting that captures the essence of nomadic life. While the site itself doesn’t offer extensive sightseeing opportunities, it serves as a perfect spot for taking stunning photographs, relaxing in a peaceful environment, or enjoying a traditional Mongolian meal before heading on your journey. Whether you’re seeking a quiet retreat or a quick cultural immersion, Chinggis Khaanii Khuree offers a glimpse into Mongolia’s storied past in a charming and convenient location.'),

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
