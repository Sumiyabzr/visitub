import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Sport/Anklebone/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Sport/Archery/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Sport/HorseRacing/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Sport/Wrestling/home_screen.dart';

class Sport extends StatefulWidget {
  const Sport({super.key});

  @override
  State<Sport> createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sport',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/mori.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.height * 0.3,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.justify,
                      'Mongolian sports embody the resilience, skill, and heritage of a deeply rooted nomadic culture. Centered around traditional skills essential to survival and cultural pride, Mongolian sports have developed from practical and military training into celebrated national competitions. The renowned “Three Manly Games”—wrestling, horse racing, and archery—are highlights of Naadam, Mongolia`s largest festival, and reflect ancient practices of physical strength, precision, and agility honed over centuries. Beyond these, sports like ankle bone shooting and eagle hunting underscore a lifestyle in harmony with Mongolia’s vast landscapes and rich traditions. Today, these sports not only entertain but preserve and pass down Mongolian values, history, and identity, drawing admiration from spectators both locally and globally.',
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        PageTransition(
                          child: Wrestling(),
                          type: PageTransitionType.bottomToTop,
                          duration: 400.ms,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Wrestling.jpg',
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
                            'Wrestling',
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
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageTransition(
                              child: Archery(),
                              type: PageTransitionType.leftToRightWithFade,
                              duration: 300.ms,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/ThumnbailApp/Archery.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            width: size.width * 0.44,
                            height: size.width * 0.9,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Archery',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/ThumnbailApp/Falconry.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          width: size.width * 0.44,
                          height: size.width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Falconry and Eagle Hunting',
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
                          child: HorseRacing(),
                          type: PageTransitionType.topToBottom,
                          duration: 400.ms,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/HorseRacing.jpg',
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
                            'Horse Racing',
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
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageTransition(
                              child: Anklebone(),
                              type: PageTransitionType.leftToRightWithFade,
                              duration: 400.ms,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/ThumnbailApp/AngleBoneShooting.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            width: size.width * 0.44,
                            height: size.width * 0.44,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ankle Bone Shooting',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/ThumnbailApp/CamelRacing.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Camel Racing',
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
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
