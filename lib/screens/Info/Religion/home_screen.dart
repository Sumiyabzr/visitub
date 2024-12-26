import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visitub/screens/Info/Religion/Buddhism/home_screen.dart';
import 'package:visitub/screens/Info/Religion/Catholic/home_screen.dart';
import 'package:visitub/screens/Info/Religion/Islam/home_screen.dart';
import 'package:visitub/screens/Info/Religion/Shamanism/home_screen.dart';

class ReligionHome extends StatefulWidget {
  const ReligionHome({super.key});

  @override
  State<ReligionHome> createState() => _ReligionHomeState();
}

class _ReligionHomeState extends State<ReligionHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Religion',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text(
            //   'Religion',
            //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            // ),

            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Shamanism())),
              child: Container(
                width: size.width,
                height: size.height * 0.22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.1.111:8000/asset/shamanism.jpg'),
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Shamanism',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ).animate().flipV(delay: 300.ms),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Buddhism())),
              child: Container(
                width: size.width,
                height: size.height * 0.22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.1.111:8000/asset/buddhism.jpg'),
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Buddhism',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ).animate().flipV(delay: 300.ms),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Catholic())),
              child: Container(
                width: size.width,
                height: size.height * 0.22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.1.111:8000/asset/catholic.jpg'),
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Catholic Church',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ).animate().flipV(delay: 300.ms),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Islam())),
              child: Container(
                width: size.width,
                height: size.height * 0.20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.1.111:8000/asset/islam.jpg'),
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Islam',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ).animate().flipV(delay: 500.ms),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
