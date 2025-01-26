import 'package:flutter/material.dart';

class TsenherHotSpringCamp extends StatefulWidget {
  const TsenherHotSpringCamp({super.key});

  @override
  State<TsenherHotSpringCamp> createState() => _TsenherHotSpringCampState();
}

class _TsenherHotSpringCampState extends State<TsenherHotSpringCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Tsenkher Hot Springs',
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
              // SHIVEET MANKHAN ------------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/Accommodition/7.Tsenkher Hot Springs/1.Shiveet Mankhan/Thumbnail/ShiveetMankhanThumb (1 of 1).jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.5,
                child: const Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Shiveet Mankhan',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ),
              // SHIVEET MANKHAN END ------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // JIGUUR -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/7.Tsenkher Hot Springs/2.Jiguur/Thumbnail/JiguurThumb (1 of 1).jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Jiguur',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // JIGUUR END -----------------------------------------------------------------------------------------------------
                  // Khangai Resort -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/7.Tsenkher Hot Springs/3.Khangai resort/Thumbnail/KhangaiResortThumb (1 of 1).jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Khangai Resort',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // Khangai Resort END -----------------------------------------------------------------------------------------------------
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Shivert -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/7.Tsenkher Hot Springs/4.Shivert/Thumbnail/ShivertThumb 1.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Shivert',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // Shivert END -----------------------------------------------------------------------------------------------------
                  // Duut -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/7.Tsenkher Hot Springs/5.Duut/Thumbnail/DuutThumb (1 of 1).jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Duut',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // Duut END -----------------------------------------------------------------------------------------------------
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
