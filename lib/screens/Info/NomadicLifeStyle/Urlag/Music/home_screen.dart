import 'package:flutter/material.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/bishguur.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/boginoduu.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/khoomei.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/khuuchir.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/limbe.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/magtaal.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/morin_huur.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/shaman.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/tovshuur.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/epicstory.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/urtiinduu.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/yatga.dart';
import 'package:visitub/style/app_style.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Music',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 1 ================================================================*/

                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MorinHuur(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(AppStyle.morinhuur))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Yatga(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image:
                            DecorationImage(image: AssetImage(AppStyle.yatga))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Khuuchir(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(AppStyle.huuchir))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Morin Khuur',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Yatga',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Khuuchir',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 2 ================================================================*/

                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Limbe(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image:
                            DecorationImage(image: AssetImage(AppStyle.limbe))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tovshuur(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(AppStyle.tovshuur))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bishguur(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Limbe',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Tovshuur',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Bishguur',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 3 ================================================================*/

                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShamanDrum(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(AppStyle.shamandrum))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UrtiinDuu(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(AppStyle.urtiinduu))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BoginoDuu(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(AppStyle.boginoduu))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Shaman Drum',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Long Song',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Short Song',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 4 ================================================================*/

                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Khoomei(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Magtaal(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(AppStyle.magtaal))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tuuli(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image:
                            DecorationImage(image: AssetImage(AppStyle.tuuli))),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Throat Singing',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Praise Songs',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Epic Storytelling',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
