import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/History/Product/post_imperial.dart';
import 'package:visitub/style/app_style.dart';

class MNEmpire extends StatefulWidget {
  const MNEmpire({super.key});

  @override
  State<MNEmpire> createState() => _MNEmpireState();
}

class _MNEmpireState extends State<MNEmpire> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: NetworkImage(AppStyle.genghis))),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1)
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Stack(children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.white,
                            iconSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rise of Genghis Khan:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  SizedBox(height: 5),
                  Text(
                    'The rise of Genghis Khan, born as Temüjin, is a saga of resilience, leadership, and transformative vision. Temüjin faced adversity from a young age, contending with the complexities of tribal politics and inter-clan conflicts. His ability to forge alliances, both through diplomacy and military prowess, set him apart as a unifier. In 1206, Genghis Khan was declared the Great Khan, marking the establishment of the Mongol Empire. Genghis Khan`s leadership principles, rooted in meritocracy and unity, resonated throughout the empire. His innovative military strategies, including the use of mounted archers, catapulted the Mongol army to unparalleled success. The nomadic roots of the Mongols, coupled with Genghis Khan`s administrative reforms, created a unique and effective governing structure.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.genghis1),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.genghis2),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.genghis3),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Conquests and Expansion:',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
                  .animate()
                  .flipV(delay: 500.ms)
                  .move(delay: 300.ms, duration: 600.ms),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Under the leadership of Genghis Khan`s successors, notably Kublai Khan, the Mongol Empire reached unprecedented heights of territorial expansion. The conquests extended across Asia, Europe, and the Middle East, creating a vast empire that bridged diverse cultures and civilizations. The Silk Road became a bustling conduit for trade, fostering economic prosperity and cultural exchange. The Pax Mongolica, a period of relative peace under Mongol rule, facilitated the exchange of technologies, knowledge, and artistic expressions. Mongol administrators actively promoted religious tolerance, allowing various faiths to coexist. The empire`s impact on global history is evident in the diffusion of papermaking, printing, and other advancements that shaped the Renaissance in Europe.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.conquests),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.conquests2),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.conquests3),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.conquests4),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: 250,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //             image: NetworkImage(
                  //                 'http://192.168.1.83:8000/asset/shamanism8.jpg'),
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.high)),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: 250,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //             image: NetworkImage(
                  //                 'http://192.168.1.83:8000/asset/shamanism9.jpg'),
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.high)),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Legacy of the Mongol Empire:',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                  .animate()
                  .flipV(delay: 500.ms)
                  .move(delay: 300.ms, duration: 600.ms),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Mongol Empire`s legacy is multifaceted and enduring. Genghis Khan`s emphasis on meritocracy and administrative efficiency left a lasting imprint on Mongolian governance. The empire`s tolerance of diverse cultures and religions fostered an environment where artistic, scientific, and philosophical ideas flourished. While the empire faced challenges such as internal strife and fragmentation, the Mongol legacy persisted in the cultural fabric of successor states. The Golden Horde in Russia, the Ilkhanate in the Middle East, and the Yuan Dynasty in China all carried traces of Mongol influence. The interconnectedness forged during the Pax Mongolica laid the groundwork for a globalized world.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.mnempire),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.mnempire2),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.mnempire3),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.mnempire4),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: 250,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //             image: NetworkImage(
                  //                 'http://192.168.1.83:8000/asset/shamanism8.jpg'),
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.high)),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: 250,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //             image: NetworkImage(
                  //                 'http://192.168.1.83:8000/asset/shamanism9.jpg'),
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.high)),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      PageTransition(
                          child: PostImperial(),
                          type: PageTransitionType.fade,
                          duration: 900.ms)),
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MNEmpire(),)),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Continue reading Post-Imperial Period',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
