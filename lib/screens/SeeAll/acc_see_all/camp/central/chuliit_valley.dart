import 'package:flutter/material.dart';

class ChuluutValleyCamp extends StatefulWidget {
  const ChuluutValleyCamp({super.key});

  @override
  State<ChuluutValleyCamp> createState() => _ChuluutValleyCampState();
}

class _ChuluutValleyCampState extends State<ChuluutValleyCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Chuluut Valley',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/Accommodition/9.Chuluut Valley/Chuluut River Tourist Camp/Thumbnail/ChuluutRiverTouristCampThumb (1 of 1).jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
              width: size.width * 0.44,
              height: size.width * 0.44,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Chuluut River Tourist Camp',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
