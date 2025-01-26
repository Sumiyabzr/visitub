import 'package:flutter/material.dart';

class TaikharRockCamp extends StatefulWidget {
  const TaikharRockCamp({super.key});

  @override
  State<TaikharRockCamp> createState() => _TaikharRockCampState();
}

class _TaikharRockCampState extends State<TaikharRockCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Taikhar Rock',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tungalag Camp -----------------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/8.Taikhar Rock/1.Tungalag  camp/Thumbnail/TungalarTamirThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Tungalag Camp',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // Tungalag Camp END -----------------------------------------------------------------------------------------------------
                // Taikhar Camp -----------------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/8.Taikhar Rock/2.Taikhar Camp/Thumbnail/TaikharCampThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Taikhar Camp',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // Taikhar Camp END -----------------------------------------------------------------------------------------------------
              ],
            ),
          ],
        ),
      ),
    );
  }
}
