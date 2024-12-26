import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitub/screens/Info/TouristInformation/UsefulTipsInMN/Useful%20phrases/Greetings/home_screen.dart';

class UsefulPhrases extends StatefulWidget {
  const UsefulPhrases({super.key});

  @override
  State<UsefulPhrases> createState() => _UsefulPhrasesState();
}

class _UsefulPhrasesState extends State<UsefulPhrases> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Useful phrases',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white12,
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Greetings(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.voice_chat,
                      size: 45,
                      color: HexColor('#F02310'),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  child: Icon(
                    Icons.local_taxi,
                    size: 45,
                    color: HexColor('#2984B0'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  child: Icon(
                    Icons.color_lens,
                    size: 45,
                    color: HexColor('#F5BF15'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.3,
                  child: Text(
                    'Greetings',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Taxi',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Colors',
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  child: Icon(
                    Icons.shopping_bag_rounded,
                    size: 45,
                    color: HexColor('#FF5F9D'),
                  ),
                ),
                GestureDetector(
                  // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UsefulPhrases(),)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.format_list_numbered_outlined,
                      size: 45,
                      color: HexColor('#136A3F'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.3,
                  child: Text(
                    'Shopping',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    'Numbers',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
