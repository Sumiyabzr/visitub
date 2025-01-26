import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/5HoshuuMal/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Ger/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Hool/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Sport/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/home_screen.dart';

class NomadicScreen extends StatefulWidget {
  const NomadicScreen({super.key});

  @override
  State<NomadicScreen> createState() => _NomadicScreenState();
}

class _NomadicScreenState extends State<NomadicScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'http://192.168.1.83:8000/asset/NLS.jpg',
                    fit: BoxFit.cover,
                  ),
                  SafeArea(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 4, left: 4),
                      child: IconButton(
                        onPressed: () => Navigator.pop(
                          context,
                        ),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: const Color.fromARGB(255, 0, 0, 0)
                              .withOpacity(0.7),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nomadic Culture',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          child: ReadMoreText(
                            'In modern Mongolia, despite the increasing urbanization and development, a significant portion of the population still embraces a nomadic lifestyle. The modern nomadic lifestyle in Mongolia is an intriguing blend of traditional practices and contemporary adaptations, showcasing the resilience of nomadic culture in the face of changing times.Nomadic herders, known as "herders," continue to move with their livestock, seeking suitable pastureland and water sources. While the traditional ger (yurt) remains a central feature of their lifestyle, some herders have incorporated modern elements into their mobile dwellings, such as solar panels to generate electricity and satellite dishes for communication and entertainment. This integration of technology allows herders to stay connected to the outside world even while on the move.Mobile phones have become an essential tool for modern nomads, providing them with a means of communication and access to vital weather forecasts, market information, and emergency services. It has significantly improved communication between herders and their families, enabling them to coordinate movements or call for assistance when needed.Moreover, modern transportation, such as motorcycles and four-wheel-drive vehicles, has facilitated the movement of herders and their livestock over longer distances. These vehicles have proven to be valuable assets in emergencies and during extreme weather conditions, making their traditional nomadic lifestyle more manageable.Education and healthcare services have also reached many nomadic communities, thanks to efforts by the Mongolian government and non-governmental organizations. Mobile schools and health clinics have been established to provide educational and medical support to herders, especially during the colder winter months when they may stay closer to permanent settlements.While some herders have chosen to settle permanently in rural towns or urban centers, others maintain a semi-nomadic lifestyle, alternating between the city and the countryside throughout the year. This lifestyle allows them to take advantage of the educational and healthcare opportunities in urban areas while preserving their nomadic heritage and maintaining their connection with nature and livestock.The modern nomadic lifestyle also involves interactions with the market economy. Herders engage in livestock breeding and dairy production, selling products like meat, wool, and dairy to local and international markets. These economic activities have enabled them to participate in the cash economy while continuing to live a mobile lifestyle.Despite the challenges posed by climate change, urbanization, and the sedentarization policies of the past, many Mongolian herders continue to cherish and uphold their nomadic way of life. It represents not only a source of livelihood but also a deep connection to their cultural heritage and ancestral traditions.',
                            trimLines: 5,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ger(),
                              )),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/ThumnbailApp/Ger.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            width: size.width,
                            height: size.width * 0.44,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ger',
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
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Food(),
                                          )),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/ThumnbailApp/Food.jpg',
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        width: size.width * 0.44,
                                        height: size.width * 0.44,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Food',
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
                                          MaterialPageRoute(
                                            builder: (context) => Art(),
                                          )),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/ThumnbailApp/Nomadic Art.jpg',
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        width: size.width * 0.44,
                                        height: size.width * 0.9,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Nomadic Art',
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
                                          MaterialPageRoute(
                                            builder: (context) => Sport(),
                                          )),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/ThumnbailApp/Sports.jpg',
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        width: size.width * 0.44,
                                        height: size.width * 0.44,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Sports of Mongolia',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                FiveLiveStock(),
                                          )),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/ThumnbailApp/FiveSnouts.jpg',
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        width: size.width * 0.44,
                                        height: size.width * 0.9,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Five Snouts',
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
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ClothingInfo(),
                                          )),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/ThumnbailApp/Clothing.jpg',
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        width: size.width * 0.44,
                                        height: size.width * 0.44,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Clothing',
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
                                          MaterialPageRoute(
                                            builder: (context) => Materials(),
                                          )),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/ThumnbailApp/Crafting.jpg',
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        width: size.width * 0.44,
                                        height: size.width * 0.44,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Crafting',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
