import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/Content/home_screen.dart';
import 'package:visitub/screens/Info/History/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/home_screen.dart';
import 'package:visitub/screens/Info/Religion/home_screen.dart';
import 'package:visitub/screens/Info/TouristInformation/home_screen.dart';
import 'package:visitub/style/app_style.dart';

class InfoN extends StatefulWidget {
  const InfoN({super.key});

  @override
  State<InfoN> createState() => _InfoNState();
}

class _InfoNState extends State<InfoN> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Information',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ).animate().scaleY(delay: 400.ms, duration: 500.ms),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                        child: NomadicScreen(),
                        type: PageTransitionType.fade,
                        duration: 900.ms)),
                // MaterialPageRoute(builder: (context) => NomadicScreen(),)
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.111:8000/asset/images/Nomadic Culture.jpg'),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.45,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              Colors.black12.withOpacity(0.005)
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Nomadic Culture',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ).animate().fade(delay: 800.ms, duration: 800.ms),
                      ),
                    ),
                  ),
                ),
              ).animate().fadeIn(delay: 300.ms, duration: 800.ms),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            PageTransition(
                                child: HistoryInfo(),
                                type: PageTransitionType.fade,
                                duration: 900.ms)),
                        // () {
                        //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                        // },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.111:8000/asset/infoHistory.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.45,
                          height: size.width * 0.44,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                    colors: [
                                      Colors.black87,
                                      Colors.black12.withOpacity(0.005)
                                    ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'History',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                                    .animate()
                                    .fade(delay: 800.ms, duration: 800.ms),
                              ),
                            ),
                          ),
                        ),
                      ).animate().fadeIn(delay: 300.ms, duration: 800.ms),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            PageTransition(
                                child: ReligionHome(),
                                type: PageTransitionType.fade,
                                duration: 900.ms)),
                        child: Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://192.168.1.111:8000/asset/infoReligion.jpg'),
                                    fit: BoxFit.cover)),
                            width: size.width * 0.45,
                            height: size.width * 0.44,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.black87,
                                        Colors.black12.withOpacity(0.1)
                                      ])),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'Religion',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                      .animate()
                                      .fade(delay: 800.ms, duration: 800.ms),
                                ),
                              ),
                            )),
                      ).animate().fadeIn(delay: 300.ms, duration: 800.ms),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                            child: ToursitInformation(),
                            type: PageTransitionType.fade,
                            duration: 900.ms)),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(AppStyle.infotour),
                              fit: BoxFit.cover)),
                      width: size.width * 0.46,
                      height: size.width * 0.89,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.1)
                                ])),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Tourist information',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ).animate().fade(delay: 800.ms, duration: 800.ms),
                          ),
                        ),
                      ),
                    ),
                  ).animate().fadeIn(delay: 300.ms, duration: 800.ms)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      child: Content(),
                      type: PageTransitionType.fade,
                      duration: 900.ms,
                    )),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.111:8000/asset/infoContent.jpg'),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.45,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              Colors.black12.withOpacity(0.1)
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Content',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ).animate().fade(delay: 800.ms, duration: 800.ms),
                      ),
                    ),
                  ),
                ),
              ).animate().fadeIn(delay: 300.ms, duration: 800.ms)
            ],
          ),
        ),
      ),
    );
    // SingleChildScrollView(
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    //     child: Column(children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           GestureDetector(
    //             onTap: () => Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => NomadicScreen(),
    //                 )),
    //             child: Column(children: [
    //               Container(
    //                 decoration: BoxDecoration(
    //                     image: DecorationImage(
    //                         image: NetworkImage(
    //                             'http://192.168.1.111:8000/asset/infoNLS.jpg'),
    //                         fit: BoxFit.cover),
    //                     borderRadius: BorderRadius.circular(8),
    //                     color: const Color.fromARGB(255, 255, 255, 255)),
    //                 width: size.width * 0.43,
    //                 height: size.height * 0.2,
    //               ),
    //               Text(
    //                 'Nomadic lifestyle',
    //                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    //               )
    //             ]),
    //           ),
    //           GestureDetector(
    //             // onTap: () => Navigator.push(
    //             //     context,
    //             //     MaterialPageRoute(
    //             //       builder: (context) => HistoryInfo(),
    //             //     )),
    //             child: Column(
    //               children: [
    //                 Container(
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           image: NetworkImage(
    //                               'http://192.168.1.111:8000/asset/infoHistory.jpg'),
    //                           fit: BoxFit.cover),
    //                       borderRadius: BorderRadius.circular(8),
    //                       color: const Color.fromARGB(255, 255, 255, 255)),
    //                   width: size.width * 0.43,
    //                   height: size.height * 0.2,
    //                 ),
    //                 Text('History',
    //                     style: TextStyle(
    //                         fontSize: 14, fontWeight: FontWeight.w400))
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 15,
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             children: [
    //               Container(
    //                 decoration: BoxDecoration(
    //                     image: DecorationImage(
    //                         image: NetworkImage(
    //                             'http://192.168.1.111:8000/asset/infoContent.jpg'),
    //                         fit: BoxFit.cover),
    //                     borderRadius: BorderRadius.circular(8),
    //                     color: const Color.fromARGB(255, 255, 255, 255)),
    //                 width: size.width * 0.43,
    //                 height: size.height * 0.2,
    //               ),
    //               Text('Content',
    //                   style:
    //                       TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
    //             ],
    //           ),
    //           GestureDetector(
    //             onTap: () => Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => ToursitInformation(),
    //                 )),
    //             child: Column(
    //               children: [
    //                 Container(
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           image: NetworkImage(
    //                               'http://192.168.1.111:8000/asset/infoTour.jpg'),
    //                           fit: BoxFit.cover),
    //                       borderRadius: BorderRadius.circular(8),
    //                       color: const Color.fromARGB(255, 255, 255, 255)),
    //                   width: size.width * 0.43,
    //                   height: size.height * 0.2,
    //                 ),
    //                 Text('Tourist information',
    //                     style: TextStyle(
    //                         fontSize: 14, fontWeight: FontWeight.w400))
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 15,
    //       ),
    //       Row(
    //         children: [
    //           GestureDetector(
    //             onTap: () => Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => ReligionHome(),
    //                 )),
    //             child: Column(
    //               children: [
    //                 Container(
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           image: NetworkImage(
    //                               'http://192.168.1.111:8000/asset/infoReligion.jpg'),
    //                           fit: BoxFit.cover),
    //                       borderRadius: BorderRadius.circular(8),
    //                       color: const Color.fromARGB(255, 255, 255, 255)),
    //                   width: size.width * 0.43,
    //                   height: size.height * 0.2,
    //                 ),
    //                 Text('Religion',
    //                     style: TextStyle(
    //                         fontSize: 14, fontWeight: FontWeight.w400))
    //               ],
    //             ),
    //           ),
    //         ],
    //       )
    //     ]),
    //   ),
    // );
  }
}
