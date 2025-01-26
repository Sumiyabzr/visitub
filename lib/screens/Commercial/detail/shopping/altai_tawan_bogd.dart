import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AltaiTawanBogd extends StatefulWidget {
  const AltaiTawanBogd({super.key});

  @override
  State<AltaiTawanBogd> createState() => _AltaiTawanBogdState();
}

class _AltaiTawanBogdState extends State<AltaiTawanBogd> {
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
                        height: size.width * 0.7,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Shopping/AltaiTavanBogd/AltaiTavanBogdE (1 of 1).jpg'),
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
                                    'http://192.168.1.83:8000/asset/Commercial/Shopping/AltaiTavanBogd/AltaiTavanBogdP (1 of 13).jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.23,
                        height: size.width * 0.23,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            'Altai Tavan Bogd Outdoor & Equipment Store',
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
                                  '7010 8848',
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
                                  'info@altaitavanbogd.com',
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
                                  'www.altaitavanbogd.com',
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
                                  'Altai Tavan Bogd Outdoor\n& Equipment Store',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Altai Tavan Bogd`  mountain, travel clothing and equipment store of `Diamond Star` LLC',
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
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/AltaiTavanBogd/AltaiTavanBogdP (13 of 13).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/AltaiTavanBogd/AltaiTavanBogdP (12 of 13).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/AltaiTavanBogd/AltaiTavanBogdP (11 of 13).jpg'),
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
                                  'http://192.168.1.83:8000/asset/Commercial/Shopping/AltaiTavanBogd/AltaiTavanBogdP (10 of 13).jpg'),
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
