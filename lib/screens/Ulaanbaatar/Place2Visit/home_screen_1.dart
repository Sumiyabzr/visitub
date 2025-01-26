import 'package:flutter/material.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/buddhastatue.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/morningStreet.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/narantuul.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/national.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/nightstreet.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/park.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/sukhbaatarSquare.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/zaisan.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/dashchoilin.dart';
import 'package:visitub/screens/Ulaanbaatar/Place2Visit/gandan.dart';
import 'package:visitub/style/app_style.dart';

class Place_to_visit extends StatefulWidget {
  const Place_to_visit({Key? key}) : super(key: key);

  @override
  State<Place_to_visit> createState() => _Place_to_visitState();
}

class _Place_to_visitState extends State<Place_to_visit> {
  List<String> image = [
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/SukhbaatarSquare/S%20(1%20of%201).jpg",
    "http://192.168.1.83:8000/asset/Other/ugluu1.jpg",
    "http://192.168.1.83:8000/asset/Other/park4.jpg",
    "http://192.168.1.83:8000/asset/Ub/Museums/1/NationalMuseum/Undesnii%20Museum%20(1%20of%201).jpg",
    "http://192.168.1.83:8000/asset/Other/narantuul_1.jpg",
    "http://192.168.1.83:8000/asset/Other/street_food_1.jpg",
    "http://192.168.1.83:8000/asset/Ub/Cultural/PlacesVisit/GoldenBuddha/Buddha%20(1%20of%202).jpg",
    "http://192.168.1.83:8000/asset/Zaisan (2 of 3).jpg",
    "http://192.168.1.83:8000/asset/Other/Гандан (7 of 8).jpg",
    "http://192.168.1.83:8000/asset/Other/Дашчойлин хийд (10 of 10).jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Places to visit',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 28,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SukhbaatarSquare(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(image[0]), fit: BoxFit.cover)),
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
                              child: Text('Sukhbaatar square',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                  // Container(
                  //   alignment: Alignment.bottomLeft,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(8),
                  //     image: DecorationImage(image: NetworkImage(image[0]), fit: BoxFit.cover)
                  //   ),
                  //   width: size.width,
                  //   height: size.width * 0.5,
                  //   child: Padding(padding: EdgeInsets.all(10),
                  //     child: Text('Sukhbaatar square', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                  //   ),
                  // ),
                  ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MorningStreet(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(image[1]),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: double.infinity,
                                height: size.height / 10,
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Morning street',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Park(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(image[2]),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              height: size.height / 10,
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
                                  child: Text('Park',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NationalGarden(),
                        )),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(image[3]),
                              fit: BoxFit.cover)),
                      width: size.width,
                      height: size.width * 0.5,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'National garden',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Narantuul(),
                            )),
                        child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(image[4]),
                                    fit: BoxFit.cover)),
                            width: size.width * 0.45,
                            height: size.width * 0.45,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.black87,
                                        const Color.fromARGB(31, 56, 56, 56)
                                            .withOpacity(0.001)
                                      ])),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text('Narantuul black market',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  )),
                            )),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NightStreetFood(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(image[5]),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.45,
                          height: size.width * 0.45,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Night street food',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BuddhaStatue(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(image[6]), fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(31, 56, 56, 56)
                                  .withOpacity(0.001)
                            ])),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Buddha statue',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     GestureDetector(
              //       // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DBET(),)),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //               image: AssetImage(AppStyle.p1), fit: BoxFit.cover),
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         width: size.width * 0.45,
              //         height: size.width * 0.45,
              //         child: Container(
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(8),
              //               gradient: LinearGradient(
              //                   begin: Alignment.bottomCenter,
              //                   end: Alignment.center,
              //                   colors: [
              //                     Colors.black87,
              //                     const Color.fromARGB(31, 56, 56, 56)
              //                         .withOpacity(0.001)
              //                   ])),
              //           child: Align(
              //             alignment: Alignment.bottomLeft,
              //             child: Padding(
              //               padding: EdgeInsets.all(10),
              //               child: Text(
              //                   'State Academic Theatre of Opera and Ballet',
              //                   style: TextStyle(
              //                       fontSize: 14,
              //                       fontWeight: FontWeight.bold,
              //                       color: Colors.white)),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     GestureDetector(
              //       // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DT(),)),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //               image: AssetImage(AppStyle.dt1), fit: BoxFit.cover),
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         width: size.width * 0.45,
              //         height: size.width * 0.45,
              //         child: Container(
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(8),
              //               gradient: LinearGradient(
              //                   begin: Alignment.bottomCenter,
              //                   end: Alignment.center,
              //                   colors: [
              //                     Colors.black87,
              //                     const Color.fromARGB(31, 56, 56, 56)
              //                         .withOpacity(0.001)
              //                   ])),
              //           child: Align(
              //             alignment: Alignment.bottomLeft,
              //             child: Padding(
              //               padding: EdgeInsets.all(10),
              //               child: Text(
              //                   'The State Academic Drama Theater of Mongolia',
              //                   style: TextStyle(
              //                       fontSize: 14,
              //                       fontWeight: FontWeight.bold,
              //                       color: Colors.white)),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Zaisan(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(image[7]), fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(31, 56, 56, 56)
                                  .withOpacity(0.001)
                            ])),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Zaisan',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Gandan(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(image[8]),
                              fit: BoxFit.cover)),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  const Color.fromARGB(31, 56, 56, 56)
                                      .withOpacity(0.001)
                                ])),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Gandan Tegchinlen monastery',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dashchoilin(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(image[9]),
                              fit: BoxFit.cover)),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  const Color.fromARGB(31, 56, 56, 56)
                                      .withOpacity(0.001)
                                ])),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Dashchoilin monastery',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
