import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/History/Product/modern.dart';
import 'package:visitub/style/app_style.dart';

class Independence extends StatefulWidget {
  const Independence({super.key});

  @override
  State<Independence> createState() => _IndependenceState();
}

class _IndependenceState extends State<Independence> {
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
                      image: AssetImage(AppStyle.early4))),
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
                    'Early 20th Century:',
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
                    'The early 20th century ushered in a new chapter for Mongolia as it sought to break free from external dominance. In 1911, taking advantage of the Xinhai Revolution in China, Mongolia declared independence from the Qing Dynasty. The Bogd Khan assumed a central role as the spiritual and political leader, guiding the country toward self-determination.Mongolia`s pursuit of international recognition faced challenges amidst the shifting tides of global politics. The aftermath of World War I and the Russian Revolution created complex geopolitical scenarios. Mongolia`s attempts to establish diplomatic ties with other nations and solidify its status as an independent state marked a delicate yet crucial period in its history.',
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
                              image: AssetImage(AppStyle.early),
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
                              image: AssetImage(AppStyle.early2),
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
                              image: AssetImage(AppStyle.early3),
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
                              image: AssetImage(AppStyle.early4),
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
                'Communist Period:',
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
                    'The trajectory of Mongolia took a transformative turn in 1924 when it embraced communism, aligning itself with the Soviet Union. This era, marked by socialist policies, witnessed significant changes in Mongolia`s economic, social, and political landscape. Collectivization initiatives aimed to consolidate agricultural practices, and industrialization efforts sought to modernize the country. The impact of communism was profound, touching every facet of Mongolian life. The nomadic lifestyle underwent substantial changes as herding practices were organized into collective units. Cultural shifts accompanied political transformation, and Mongolia became the second communist country in the world. The interconnectedness with the Soviet Union shaped policies and ideologies during this period.',
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
                              image: AssetImage(AppStyle.communist),
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
                              image: AssetImage(AppStyle.communist4),
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
                              image: AssetImage(AppStyle.communist2),
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
                              image: AssetImage(AppStyle.communist3),
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
                  //                 'http://192.168.1.111:8000/asset/shamanism8.jpg'),
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
                  //                 'http://192.168.1.111:8000/asset/shamanism9.jpg'),
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.high)),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Democratic Transition:',
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
                    'The winds of change swept through Mongolia in 1990 during a period of political unrest. A peaceful revolution led to the establishment of a multi-party democracy, marking the end of decades of communist rule. Mongolia emerged as a sovereign and democratic nation, committed to political pluralism, economic reforms, and fostering diplomatic ties with the international community. The transition to democracy brought about challenges and opportunities. Mongolia grappled with the complexities of building democratic institutions while maintaining its distinct cultural identity. The 1990s saw the country navigating economic reforms, including privatization efforts and the embrace of a market-oriented economy. Mongolia`s diplomatic outreach expanded as it sought to redefine its place in the global arena.',
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
                              image: AssetImage(AppStyle.demo),
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
                              image: AssetImage(AppStyle.demo2),
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
                              image: AssetImage(AppStyle.demo3),
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
                              image: AssetImage(AppStyle.demo4),
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
                  //                 'http://192.168.1.111:8000/asset/shamanism8.jpg'),
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
                  //                 'http://192.168.1.111:8000/asset/shamanism9.jpg'),
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
                          child: ModernMongolia(),
                          type: PageTransitionType.fade,
                          duration: 900.ms)),
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MNEmpire(),)),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Continue reading Modern Mongolia',
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
