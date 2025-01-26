import 'package:flutter/material.dart';

class TuvkhunCamp extends StatefulWidget {
  const TuvkhunCamp({super.key});

  @override
  State<TuvkhunCamp> createState() => _TuvkhunCampState();
}

class _TuvkhunCampState extends State<TuvkhunCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Tuvkhun Monastery',
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
                    'http://192.168.1.83:8000/asset/Accommodition/6.Tuvkhun Monastery/Malchin Ail/Thumbnail/MalchinAilThumb (1 of 1).jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width,
              height: size.width * 0.5,
              child: const Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Malchin Ail',
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
