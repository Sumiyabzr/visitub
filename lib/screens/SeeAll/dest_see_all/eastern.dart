import 'package:flutter/material.dart';

class EasternSeeAll extends StatefulWidget {
  const EasternSeeAll({super.key});

  @override
  State<EasternSeeAll> createState() => _EasternSeeAllState();
}

class _EasternSeeAllState extends State<EasternSeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Eastern',
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
                  // ITEM 1 -------------------------------------------------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Eastern-1.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                  ),
                  // ITEM 1 END -------------------------------------------------------------------------------------------------
                  // ITEM 2 -------------------------------------------------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Eastern-2.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                  ),
                  // ITEM 2 END -------------------------------------------------------------------------------------------------
                ],
              ),
              // ITEM 3 -------------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Eastern-3.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 3 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // ITEM 4 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Eastern-4.jpg'),
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
                                    'http://192.168.1.83:8000/asset/Dest/Eastern-6.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 6 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 7 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Eastern-7.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 7 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 10 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Eastern-10.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 10 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                  // ITEM 5 -------------------------------------------------------------------------------------------------
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Eastern-5.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 5 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 8 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Eastern-8.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 8 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 11 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Eastern-11.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 11 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                ],
              ),
              // ITEM 9 -------------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Eastern-9.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 9 END --------------------------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}
