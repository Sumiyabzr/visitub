import 'package:flutter/material.dart';

class WesternSeeAll extends StatefulWidget {
  const WesternSeeAll({super.key});

  @override
  State<WesternSeeAll> createState() => _WesternSeeAllState();
}

class _WesternSeeAllState extends State<WesternSeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Western',
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
              // ITEM 1 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Western-1.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 1 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // ITEM 2 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Western-2.jpg'),
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
                                    'http://192.168.1.83:8000/asset/Dest/Western-4.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 4 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 3 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Western-3.jpg'),
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
                                    'http://192.168.1.83:8000/asset/Dest/Western-5.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 5 END -------------------------------------------------------------------------------------------------
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              // ITEM 6 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Western-6.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 6 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ITEM 7 -------------------------------------------------------------------------------------------------
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Western-7.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 7 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 10 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Western-10.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 9 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 11 -------------------------------------------------------------------------------------------------

                      // ITEM 11 END -------------------------------------------------------------------------------------------------
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Western-11.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
