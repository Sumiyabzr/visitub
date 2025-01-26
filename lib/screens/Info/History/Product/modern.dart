import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visitub/style/app_style.dart';

class ModernMongolia extends StatefulWidget {
  const ModernMongolia({super.key});

  @override
  State<ModernMongolia> createState() => _ModernMongoliaState();
}

class _ModernMongoliaState extends State<ModernMongolia> {
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
                      image: NetworkImage(AppStyle.eco2))),
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
                            iconSize: 25,
                            color: Colors.white,
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
                    'Economic Development:',
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
                    'In recent decades, Mongolia has experienced economic growth driven by its abundant mineral resources. Coal, copper, and gold mining have become crucial components of the country`s economic landscape. The mining sector, attracting both domestic and foreign investments, has played a pivotal role in Mongolia`s economic development. However, the reliance on the extractive industry has posed challenges. Environmental concerns, resource management issues, and the need for economic diversification have become prominent considerations. Mongolia`s economic trajectory reflects the delicate balance between harnessing its natural resources for development and ensuring sustainable practices for the future.',
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
                              image: NetworkImage(AppStyle.eco),
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
                              image: NetworkImage(AppStyle.eco4),
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
                              image: NetworkImage(AppStyle.eco3),
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
                              image: NetworkImage(AppStyle.eco2),
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
                'Nomadic Culture:',
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
                    'Nomadic traditions remain at the heart of Mongolian identity, serving as a resilient thread connecting the past to the present. The "three manly games" – wrestling, horse racing, and archery – continue to be celebrated during the annual Naadam festival, embodying the spirit of Mongolian culture. The nomadic lifestyle, characterized by the vast steppes and traditional herding practices, remains a source of pride and an integral part of Mongolia`s heritage. Efforts to preserve and promote nomadic culture have gained momentum in recent years. Initiatives focus on educating the younger generation about traditional practices, sustainable herding methods, and the importance of preserving the unique cultural heritage. Nomadic tourism has also emerged as a means to showcase Mongolia`s traditional way of life to the world, fostering a deeper appreciation for its cultural richness.',
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
                              image: NetworkImage(AppStyle.nomad),
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
                              image: NetworkImage(AppStyle.nomad2),
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
                              image: NetworkImage(AppStyle.nomad3),
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
                              image: NetworkImage(AppStyle.nomad4),
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
              child: Text('Tourism and International Relations:',
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
                    'Mongolia`s unique landscapes, ranging from the Gobi Desert to the expansive steppes, have made it an increasingly popular destination for tourists seeking adventure and cultural immersion. The country`s nomadic culture, historical sites, and breathtaking scenery attract visitors from around the globe. Nomadic tourism initiatives provide an opportunity for travelers to experience traditional Mongolian hospitality and gain insights into the nomadic way of life.',
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
                              image: NetworkImage(AppStyle.tour),
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
                              image: NetworkImage(AppStyle.tour2),
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
                              image: NetworkImage(AppStyle.tour3),
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
                              image: NetworkImage(AppStyle.tour4),
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
            )
          ],
        ),
      ),
    );
  }
}
