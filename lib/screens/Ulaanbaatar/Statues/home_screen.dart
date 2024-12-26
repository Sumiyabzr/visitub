import 'package:flutter/material.dart';
import 'package:visitub/screens/Ulaanbaatar/Statues/beatles.dart';
import 'package:visitub/screens/Ulaanbaatar/Statues/renchin.dart';
import 'package:visitub/screens/Ulaanbaatar/Statues/zorig.dart';

class StatuesMonuments extends StatefulWidget {
  const StatuesMonuments({super.key});

  @override
  State<StatuesMonuments> createState() => _StatuesMonumentsState();
}

class _StatuesMonumentsState extends State<StatuesMonuments> {
  List data = [
    [
      "Buddha statue",
      "On the bottom of the Zaisan hill, there is a huge statue of Buddha which has a beautiful garden  with many unique flowers. In this environment you can find many kind of street food, malls, shops and nightclubs.",
      "http://192.168.1.111:8000/asset/BogdKhaanMuseum (1 of 1).jpg",
      "http://192.168.1.111:8000/asset/BogdKhaanMuseum (1 of 12).jpg",
      "http://192.168.1.111:8000/asset/BogdKhaanMuseum (2 of 12).jpg",
      "http://192.168.1.111:8000/asset/BogdKhaanMuseum (3 of 12).jpg"
    ],
    [
      "Beatles statue",
      "Right in front of the State department store there is a square called Fountain. Center of that square is the Beatles statue. Also this area is considered a street of youth. Because this place is where students, couples and young people hang out mostly. ",
      "http://192.168.1.111:8000/asset/Other/beatles.jpg",
      "http://192.168.1.111:8000/asset/Other/beatles.jpg",
      "http://192.168.1.111:8000/asset/Other/beatles.jpg",
      "http://192.168.1.111:8000/asset/Other/beatles.jpg",
    ],
    [
      "Statue of Renchin",
      "He was a researcher of Mongolian language, scholar and writer. Also he is an author of the screenplay of `Tsogt taij` which is Mongolian first historical feature film. The statue is located right in front of the National library of Mongolia. He is considered to be the creater of Mongolian modern literature.",
      "http://192.168.1.111:8000/asset/Other/Renchin1.jpg",
      "http://192.168.1.111:8000/asset/Other/Renchin2.jpg",
      "http://192.168.1.111:8000/asset/Other/Renchin3.jpg",
      "http://192.168.1.111:8000/asset/Other/Renchin4.jpg",
    ],
    [
      "Statue of Zorig",
      "Sanjaasuren Zorig was one of the leaders of 1990's democratic revolution. Zorig means brave or will in Mongolia. As his meaning of name, he was critic, who speaks for civilians bravely also willingly against of communist government. Later he became a victim of political murder. It was a massive loss for modern Mongolian democracy.",
      "http://192.168.1.111:8000/asset/Other/Zorig1.jpg",
      "http://192.168.1.111:8000/asset/Other/Zorig2.jpg",
      "http://192.168.1.111:8000/asset/Other/Zorig3.jpg",
      "http://192.168.1.111:8000/asset/Other/Zorig3.jpg",
    ],
    [
      "Zaisan",
      "Zaisan memorial is located on top of the hill at the southern part of Mongolian capital. In 1956 It was built to honor the Mongolian and Soviet soldiers who died in world war ll. It shows you the journey of the friendship between Mongolian and Russian people. From the top, You can have a panoramic view of the capital city.",
      "http://192.168.1.111:8000/asset/Zaisan (2 of 3).jpg",
      "http://192.168.1.111:8000/asset/Zaisan (3 of 3).jpg",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Statues',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 28,
              )),
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
                // GestureDetector(
                //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BuddhaStatue(),)),
                //   child: Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         image: DecorationImage(image: NetworkImage(data[0][2]), fit: BoxFit.cover)
                //       ),
                //       width: size.width,
                //       height: size.width * 0.5,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         children: [
                //           Container(
                //             width: double.infinity,
                //             height: size.height / 4.5,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(8),
                //               gradient: LinearGradient(
                //                     begin: Alignment.bottomCenter,
                //                     end: Alignment.center,
                //                     colors: [
                //                       Colors.black87,
                //                       Colors.black12.withOpacity(0.05)
                //                     ])

                //             ),
                //             child: Align(
                //               alignment: Alignment.bottomLeft,
                //               child: Padding(
                //                 padding: const EdgeInsets.all(10),
                //                 child: Text(data[0][0], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                //               ),
                //             ),
                //           )
                //         ],
                //       ),
                //     ) ,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Zorig(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(data[3][2]),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              height: size.height / 4.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.black87,
                                        Colors.black12.withOpacity(0.05)
                                      ])),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(data[3][0],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Renchin(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(data[2][2]),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              height: size.height / 4.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.black87,
                                        Colors.black12.withOpacity(0.05)
                                      ])),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(data[2][0],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Beatles(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(data[1][2]),
                            fit: BoxFit.cover)),
                    width: size.width,
                    height: size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          height: size.height / 4.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Colors.black87,
                                    Colors.black12.withOpacity(0.05)
                                  ])),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(data[1][0],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //  GestureDetector(
                //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Zaisan(),)),
                //    child: Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         image: DecorationImage(image: NetworkImage(data[4][2]), fit: BoxFit.cover)
                //       ),
                //       width: size.width ,
                //       height: size.width * 0.5,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         children: [
                //           Container(
                //             width: double.infinity,
                //             height: size.height / 4.5,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(8),
                //               gradient: LinearGradient(
                //                     begin: Alignment.bottomCenter,
                //                     end: Alignment.center,
                //                     colors: [
                //                       Colors.black87,
                //                       Colors.black12.withOpacity(0.05)
                //                     ])

                //             ),
                //             child: Align(
                //               alignment: Alignment.bottomLeft,
                //               child: Padding(
                //                 padding: const EdgeInsets.all(10),
                //                 child: Text(data[4][0], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                //               ),
                //             ),
                //           )
                //         ],
                //       ),
                //     ) ,
                //  ),
              ],
            ),
          ),
        )
        // SingleChildScrollView(
        //   physics: BouncingScrollPhysics(),
        //   child: Column(
        //     children: List.generate(
        //       data.length,
        //       (index) {
        //         return Column(
        //           children: [
        //             Padding(
        //               padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        //               child: Column(
        //                 children: [
        //                   Row(
        //                     children: [
        //                       Icon(
        //                         Icons.location_on_sharp,
        //                         size: 30,
        //                         color: HexColor('#7FBFF2'),
        //                       ),
        //                       SizedBox(
        //                         width: 10,
        //                       ),
        //                       Text(
        //                         data[index][0],
        //                         style: TextStyle(
        //                             fontSize: 20, fontWeight: FontWeight.bold),
        //                       )
        //                     ],
        //                   ),
        //                   Text(
        //                     data[index][1],
        //                     textAlign: TextAlign.justify,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               height: 250,
        //               child: ListView(
        //                 scrollDirection: Axis.horizontal,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Container(
        //                       width: size.width * 0.9,
        //                       decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(20),
        //                           image: DecorationImage(
        //                               image: NetworkImage(data[index][2]),
        //                               fit: BoxFit.cover,
        //                               filterQuality: FilterQuality.high)),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Container(
        //                       width: size.width * 0.9,
        //                       decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(20),
        //                           image: DecorationImage(
        //                               image: NetworkImage(data[index][3]),
        //                               fit: BoxFit.cover,
        //                               filterQuality: FilterQuality.high)),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Container(
        //                       width: size.width * 0.9,
        //                       decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(20),
        //                           image: DecorationImage(
        //                               image: NetworkImage(data[index][4]),
        //                               fit: BoxFit.cover,
        //                               filterQuality: FilterQuality.high)),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Container(
        //                       width: size.width * 0.9,
        //                       decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(20),
        //                           image: DecorationImage(
        //                               image: NetworkImage(data[index][5]),
        //                               fit: BoxFit.cover,
        //                               filterQuality: FilterQuality.high)),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         );
        //       },
        //     ),
        //   ),
        // ),
        );
  }
}
