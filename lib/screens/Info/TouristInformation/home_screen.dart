import 'package:flutter/material.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/before.dart';
import 'package:visitub/screens/Info/TouristInformation/Emergency/Embassies/home_screen.dart';
import 'package:visitub/screens/Info/TouristInformation/Emergency/EmergencyHospital/emergency.dart';
import 'package:visitub/screens/Info/TouristInformation/UsefulTipsInMN/firstScreen.dart';

class ToursitInformation extends StatefulWidget {
  const ToursitInformation({super.key});

  @override
  State<ToursitInformation> createState() => _ToursitInformationState();
}

class _ToursitInformationState extends State<ToursitInformation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Tourist information',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "http://192.168.1.83:8000/asset/infohome.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
                width: size.width,
                height: size.height * 0.2,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.all(10),
                            child: Text(
                              'Ready for your adventure?',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                  'In order to discover Mongolia is untamed beauty and nomadic culture, let’s review together what are the essential points to make the most out of your trip. From transportation, to visas, preparing your pack or other related tips once arrived, you will find a collection of useful information that can help you to appreciate Mongolia to the fullest.'),
              SizedBox(
                height: 26,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Before(),
                        )),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Before Mongolia.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.3,
                      child: Text(
                        'Before Mongolia',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Emergency(),
                        )),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Emergency.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.3,
                      child: Text(
                        'Emergency',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UsefulTipsInMongolia(),
                        )),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Useful Tips.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.3,
                      child: Text(
                        'Useful tips',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Embassies(),
                        )),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Embassies.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.3,
                      child: Text(
                        'Embassies',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
              // Column(children: [
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       GestureDetector(
              //         onTap: () => Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => Before(),
              //             )),
              //         child: Column(
              //           children: [
              //             Container(
              //               decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                       image: NetworkImage(
              //                           "http://192.168.1.83:8000/asset/beforeMN.jpg"),
              //                       fit: BoxFit.cover),
              //                   borderRadius: BorderRadius.circular(8),
              //                   color:
              //                       const Color.fromARGB(255, 255, 255, 255)),
              //               width: size.width * 0.43,
              //               height: size.height * 0.2,
              //             ),
              //             Text('Before Mongolia',
              //                 style: TextStyle(
              //                     fontSize: 14, fontWeight: FontWeight.w700))
              //           ],
              //         ),
              //       ),
              //       Row(
              //         children: [
              //           GestureDetector(
              //             onTap: () => Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) => Emergency(),
              //                 )),
              //             child: Column(
              //               children: [
              //                 Container(
              //                   decoration: BoxDecoration(
              //                       image: DecorationImage(
              //                           image: NetworkImage(
              //                               "http://192.168.1.83:8000/asset/emergency.jpg"),
              //                           fit: BoxFit.cover),
              //                       borderRadius: BorderRadius.circular(8),
              //                       color: const Color.fromARGB(
              //                           255, 255, 255, 255)),
              //                   width: size.width * 0.43,
              //                   height: size.height * 0.2,
              //                 ),
              //                 Text('Emergency',
              //                     style: TextStyle(
              //                         fontSize: 14,
              //                         fontWeight: FontWeight.w700))
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              //   SizedBox(
              //     height: 15,
              //   ),
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       GestureDetector(
              //         // onTap: () => Navigator.push(
              //         //     context,
              //         //     MaterialPageRoute(
              //         //       builder: (context) => ReligionHome(),
              //         //     )),
              //         child: Column(
              //           children: [
              //             Container(
              //               decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                       image: NetworkImage(
              //                           "http://192.168.1.83:8000/asset/practical.jpg"),
              //                       fit: BoxFit.cover),
              //                   borderRadius: BorderRadius.circular(8),
              //                   color:
              //                       const Color.fromARGB(255, 255, 255, 255)),
              //               width: size.width * 0.43,
              //               height: size.height * 0.2,
              //             ),
              //             Text('Practical in Mongolia',
              //                 style: TextStyle(
              //                     fontSize: 14, fontWeight: FontWeight.w700))
              //           ],
              //         ),
              //       ),
              //       Column(
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(
              //                 image: DecorationImage(
              //                     image: NetworkImage(
              //                         "http://192.168.1.83:8000/asset/faq.jpg"),
              //                     fit: BoxFit.cover),
              //                 borderRadius: BorderRadius.circular(8),
              //                 color: const Color.fromARGB(255, 255, 255, 255)),
              //             width: size.width * 0.43,
              //             height: size.height * 0.2,
              //           ),
              //           Text('FAQ',
              //               style: TextStyle(
              //                   fontSize: 14, fontWeight: FontWeight.w700))
              //         ],
              //       ),
              //     ],
              //   ),
              // ])
            ],
          ),
        ),
      ),
    );
  }
}
