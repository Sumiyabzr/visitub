import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/Content/visual_treasures/home_screen.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Content',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/ThumnbailApp/FourJourneys.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: size.width,
                height: size.width * 0.44,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The Four Journeys',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/ThumnbailApp/LandofStories.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Land of Stories',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/ThumnbailApp/CulturalChronicles.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Cultural Chronicles',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  PageTransition(
                    child: VisualTreasures(),
                    type: PageTransitionType.fade,
                    duration: 300.ms,
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'http://192.168.1.83:8000/asset/ThumnbailApp/VisualTreasures.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Visual Treasures',
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
                      'http://192.168.1.83:8000/asset/ThumnbailApp/BNMOriginals.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: size.width,
                height: size.width * 0.44,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'BNM Originals',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
