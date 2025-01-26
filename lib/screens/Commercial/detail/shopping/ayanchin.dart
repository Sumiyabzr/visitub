import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Ayanchin extends StatefulWidget {
  const Ayanchin({super.key});

  @override
  State<Ayanchin> createState() => _AyanchinState();
}

class _AyanchinState extends State<Ayanchin> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    SizedBox(
                        height: size.height * 0.45,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Shopping/Ayanchin/AyanchinP (3 of 9).jpg'),
                                  fit: BoxFit.cover)),
                        )),
                    SafeArea(
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial/Shopping/Ayanchin/AyanchinP (9 of 9).jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.23,
                        height: size.width * 0.23,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            'Ayanchin Outfitters',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: HexColor('#E8EFFF'),
                    ),
                    width: size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.phone_outlined,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '011 31 9211',
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.copy,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.mail_outline_outlined,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Ayanchin@gmail.com',
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.copy,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.sports_basketball_outlined,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'ayanchin.mn',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.facebook,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Ayanchin Outfitters/\nАянчин Аутфиттерс',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Campaign, Class, Fishing Tools, Shoes, Clothing, Labor protection clothes and shoes',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/Ayanchin/AyanchinP (8 of 9).jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/Ayanchin/AyanchinP (7 of 9).jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/Ayanchin/AyanchinP (6 of 9).jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/Ayanchin/AyanchinP (5 of 9).jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                    ],
                  ),

                  // Stack(
                  //   children: [
                  //     Stack(
                  //       children: [
                  //         SizedBox(
                  //           child: Container(
                  //               width: size.width,
                  //               height: size.width,
                  //               child: GridView.builder(
                  //                   physics:
                  //                       NeverScrollableScrollPhysics(),
                  //                   itemCount: provider
                  //                       .getProducts(widget.data)![
                  //                           provider.categoryIndex]
                  //                           [provider.productIndex]
                  //                           ['Image']
                  //                       .length,
                  //                   gridDelegate:
                  //                       SliverGridDelegateWithFixedCrossAxisCount(
                  //                           crossAxisCount: 2,
                  //                           crossAxisSpacing: 5,
                  //                           mainAxisSpacing: 5),
                  //                   itemBuilder: (context, index) {
                  //                     return Container(
                  //                       decoration: BoxDecoration(
                  //                           borderRadius:
                  //                               BorderRadius.circular(
                  //                                   8),
                  //                           image: DecorationImage(
                  //                               image: NetworkImage(
                  //                                 'http://192.168.1.83:8000/asset/Commercial/Hotel/ChinggisKhaanHotel/ChinggisKhaanHotelE%20(1%20of%201).jpg',
                  //                               ),
                  //                               fit: BoxFit.cover)),
                  //                     );
                  //                   })),
                  //         )
                  //       ],
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  // TabBar(
                  //   labelColor: Colors.black,
                  //   isScrollable: true,
                  //   indicator: BoxDecoration(
                  //     gradient: LinearGradient(
                  //         begin: Alignment.centerLeft,
                  //         end: Alignment.centerRight,
                  //         colors: [
                  //           HexColor('#1862FF'),
                  //           HexColor('#5A9BF8')
                  //         ]),
                  //     borderRadius: BorderRadius.circular(30),
                  //   ),
                  //   tabs: [
                  //     Tab(
                  //       text: 'Overview',
                  //     ),
                  //     // Tab(
                  //     //   text: 'Services',
                  //     // ),
                  //     // Tab(
                  //     //   text: 'Reviews',
                  //     // ),
                  //     // Tab(
                  //     //   text: 'Menu',
                  //     // ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
