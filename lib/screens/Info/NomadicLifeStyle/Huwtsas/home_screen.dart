import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/product/accessories.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/product/boots.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/product/deel.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/product/headwear.dart';

class ClothingInfo extends StatefulWidget {
  const ClothingInfo({super.key});

  @override
  State<ClothingInfo> createState() => _ClothingInfoState();
}

class _ClothingInfoState extends State<ClothingInfo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Clothing',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      // extendBody: Paint.enableDithering,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.justify,
                'Mongolian clothing, particularly the deel, is not only a practical garment suited for the extreme climate but also a symbol of Mongolia’s nomadic lifestyle, history, and identity. Clothing in Mongolia is intricately tied to cultural customs, representing social status, tribal identity, and respect for nature. Worn for both everyday life and special occasions, traditional Mongolian clothing tells the story of a people deeply connected to the land and their heritage.',
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  PageTransition(
                    child: Headwear(),
                    type: PageTransitionType.bottomToTop,
                    duration: 400.ms,
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/ThumnbailApp/Hats.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  width: size.width,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hats: A Crown of Prestige',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: Deel(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/ThumnbailApp/Deel.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          width: size.width * 0.44,
                          height: size.width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Deel: The Core of Mongolian Attire',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/ThumnbailApp/Belts.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Belts and Sashes',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/ThumnbailApp/Modern Deel.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        width: size.width * 0.44,
                        height: size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Modern Deel',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: Accessories(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/ThumnbailApp/Jewelry.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Jewelry',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: Boots(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/ThumnbailApp/Boots.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          width: size.width * 0.44,
                          height: size.width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Boots (Gutal)',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/ThumnbailApp/Fur.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        width: size.width * 0.44,
                        height: size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Fur and Leather',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
