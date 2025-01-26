import 'package:flutter/material.dart';
import 'package:visitub/screens/Details/DesDetail/central/khogno.dart';

class CentralSeeAll extends StatefulWidget {
  const CentralSeeAll({super.key});

  @override
  State<CentralSeeAll> createState() => _CentralSeeAllState();
}

class _CentralSeeAllState extends State<CentralSeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Central',
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
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KhognoTarna(),
                    )),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.83:8000/asset/Dest/Central-1.jpg'),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Khogno Tarna NP',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              // ITEM 1 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ITEM 2 -------------------------------------------------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Central-2.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                  ),
                  // ITEM 2 END -------------------------------------------------------------------------------------------------
                  // ITEM 3 -------------------------------------------------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Central-3.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                  ),
                  // ITEM 3 END -------------------------------------------------------------------------------------------------
                ],
              ),
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
                                    'http://192.168.1.83:8000/asset/Dest/Central-4.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 4 END -------------------------------------------------------------------------------------------------
                      // ITEM 7 -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-7.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 7 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 9 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-9.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 9 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 11 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-13.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 11 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 12 -------------------------------------------------------------------------------------------------

                      // ITEM 12 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 5 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-5.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 5 END -------------------------------------------------------------------------------------------------
                      // ITEM 6 -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-6.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 6 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 8 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-8.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                      ),
                      // ITEM 8 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 10 -------------------------------------------------------------------------------------------------
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-10.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                      ),
                      // ITEM 10 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 13 -------------------------------------------------------------------------------------------------

                      // ITEM 13 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Central-11.jpg'),
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
