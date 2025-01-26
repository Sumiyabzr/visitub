import 'package:flutter/material.dart';

class AccSouthernSeeAll extends StatefulWidget {
  const AccSouthernSeeAll({super.key});

  @override
  State<AccSouthernSeeAll> createState() => _AccSouthernSeeAllState();
}

class _AccSouthernSeeAllState extends State<AccSouthernSeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Southern',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // ITEM 1 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Baga Gazariin Chuluu',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 1 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 3 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-3.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Tsagaan Suvraga',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 3 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 5 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-5.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Mukhar Shivert Am',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 5 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 7 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-7.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Dungenee Am',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 7 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 2 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-2.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Ikh Gazariin Chuluu',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 2 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 4 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-4.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Dalanzadgad',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 4 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                      // ITEM 6 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-6.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.91,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Yolyn Am',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 6 END -------------------------------------------------------------------------------------------------
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              // ITEM 8 -------------------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-8.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Khongor Sand Dunes',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              // ITEM 8 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              // ITEM 9 -------------------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-9.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Flaming Cliffs',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              // ITEM 9 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ITEM 10 -------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Southern-10.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Bulgan',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  // ITEM 10 END -------------------------------------------------------------------------------------------------
                  // ITEM 11 -------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Dest/Southern-12.jpg'),
                            fit: BoxFit.cover)),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Ongi Monastery',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  // ITEM 11 END -------------------------------------------------------------------------------------------------
                ],
              ),
              SizedBox(height: 10),
              // ITEM 12 -------------------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-11.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Moltsog Sand Dunes',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              // ITEM 13 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              // ITEM 12 -------------------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-14.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Khanan Khets',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              // ITEM 13 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Southern-15.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Khermen Tsaw',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // ITEM 15 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhusliinUul.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Khusliin Uul',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 14 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 16 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Southern-16.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Khamriin Khiid',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 15 END -------------------------------------------------------------------------------------------------
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
