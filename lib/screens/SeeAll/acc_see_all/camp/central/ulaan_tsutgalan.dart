import 'package:flutter/material.dart';

class UlaanTsutgalanCamp extends StatefulWidget {
  const UlaanTsutgalanCamp({super.key});

  @override
  State<UlaanTsutgalanCamp> createState() => _UlaanTsutgalanCampState();
}

class _UlaanTsutgalanCampState extends State<UlaanTsutgalanCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Orkhon Valley',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
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
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: NetworkImage(
                    'http://192.168.1.83:8000/asset/Accommodition/4.Red Waterfall Ulaan Tsutgalan/Blue sky/Thumbnail/BlueSkyThumb (1 of 1).jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width,
              height: size.width * 0.5,
              child: const Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Blue Sky',
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
