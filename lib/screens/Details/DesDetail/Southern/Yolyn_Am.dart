import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Yolyn_Am extends StatefulWidget {
  const Yolyn_Am({super.key});

  @override
  State<Yolyn_Am> createState() => _Yolyn_AmState();
}

class _Yolyn_AmState extends State<Yolyn_Am> {
  PageController _controller1 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Southern Mongolia/Yolyn Am/YolynAm-12.jpg',
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
                    'Yolyn Am',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Yolyn Am is a spectacular narrow canyon located in the Gobi Gurvansaikhan National Park in southern Mongolia. Nestled in the Zuun Saikhan Mountain range, this gorge is famous for its striking beauty and unusual feature—a thick sheet of ice that persists well into the summer months, despite being in the heart of the Gobi Desert. The gorge, named after the lammergeier vultures (Yol) that inhabit the area, features towering cliffs and a winding path that narrows dramatically as you walk deeper into the gorge. During winter and spring, a frozen river creates an ice field, which can remain until late July. As you trek through Yolyn Am, you will encounter stunning rock formations, cool air, and possibly wildlife such as ibex and Argali sheep. Yolyn Am is a popular destination for hikers and nature enthusiasts. Its cool and refreshing atmosphere offers a stark contrast to the arid desert that surrounds it. Whether you’re captivated by the unique ice field, the breathtaking cliffs, or the chance to spot wildlife, Yolyn Am is a must-visit location for travelers exploring the Gobi Desert.'),

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
