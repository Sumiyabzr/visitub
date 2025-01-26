import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dalanzadgad extends StatefulWidget {
  const Dalanzadgad({super.key});

  @override
  State<Dalanzadgad> createState() => _DalanzadgadState();
}

class _DalanzadgadState extends State<Dalanzadgad> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Dalanzadgad/DalanZadgad-10.jpg',
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
                    'Dalanzadgad',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Dalanzadgad is the capital of Umnugovi Province in southern Mongolia and serves as the gateway to the famous Gobi Desert. Situated around 540 kilometers south of Ulaanbaatar, this small yet rapidly developing town plays a crucial role in tourism, as it provides access to some of Mongolia’s most iconic natural attractions, including the Flaming Cliffs, Khongoryn Els Sand Dunes, and Yolyn Am Gorge. Although Dalanzadgad itself is a modest town, it offers essential services such as hotels, guesthouses, and restaurants for travelers. The Dalanzadgad Airport provides regular flights to and from Ulaanbaatar, making it a convenient entry point for visitors heading into the Gobi Desert. One of the main highlights near Dalanzadgad is Yolyn Am, a dramatic gorge in the Gobi Gurvansaikhan National Park known for its ice fields that remain well into summer. The town is also a good base for visiting the vast Khongoryn Els sand dunes, which are some of the largest and most impressive dunes in Mongolia. With its role as a key hub for Gobi Desert exploration, Dalanzadgad offers a mix of traditional Mongolian culture and the natural wonders of the Gobi, making it an essential stop for travelers looking to experience the vast, rugged beauty of southern Mongolia.'),

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
