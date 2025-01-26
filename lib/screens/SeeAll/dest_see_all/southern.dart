import 'package:flutter/material.dart';

class SouthernSeeAll extends StatefulWidget {
  const SouthernSeeAll({super.key});

  @override
  State<SouthernSeeAll> createState() => _SouthernSeeAllState();
}

class _SouthernSeeAllState extends State<SouthernSeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Southern',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // ITEM 1 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 1 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 3 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-3.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 3 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 5 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-5.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 5 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 7 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-7.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 7 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 2 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-2.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 2 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 4 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-4.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 4 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 6 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-6.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 6 END -------------------------------------------------------------------------------------------------
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              // ITEM 8 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-8.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 8 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              // ITEM 9 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-9.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 9 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ITEM 10 -------------------------------------------------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Southern-10.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                  ),
                  // ITEM 10 END -------------------------------------------------------------------------------------------------
                  // ITEM 11 -------------------------------------------------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Southern-12.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                  ),
                  // ITEM 11 END -------------------------------------------------------------------------------------------------
                ],
              ),
              SizedBox(height: 10),
              // ITEM 12 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-11.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 13 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              // ITEM 12 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-14.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 13 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // ITEM 15 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-15.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 14 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 16 -------------------------------------------------------------------------------------------------
                      // Container(
                      //   decoration: BoxDecoration(
                      //
                      //     borderRadius: BorderRadius.circular(15),
                      //   ),
                      //   width: size.width * 0.44,
                      //   height: size.width * 0.44,
                      // ),
                      // ITEM 16 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 16 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-16.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 15 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 17 -------------------------------------------------------------------------------------------------
                      // Container(
                      //   decoration: BoxDecoration(
                      //
                      //     borderRadius: BorderRadius.circular(15),
                      //   ),
                      //   width: size.width * 0.44,
                      //   height: size.width * 0.44,
                      // ),
                      // ITEM 17 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
