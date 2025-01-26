import 'package:flutter/material.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/biyelgee.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/court.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/horsedance.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/tsam.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/wrestler.dart';
import 'package:visitub/style/app_style.dart';

class Dance extends StatefulWidget {
  const Dance({super.key});

  @override
  State<Dance> createState() => _DanceState();
}

class _DanceState extends State<Dance> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dancing',
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(AppStyle.dancing),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.9,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Mongolian traditional dancing is a captivating expression of the country`s rich cultural tapestry, embodying the spirit, history, and traditions of its people. Rooted deeply in Mongolia`s nomadic lifestyle, these dances are not only forms of entertainment but also serve as important cultural rituals and storytelling mediums. There are several distinct styles of traditional Mongolian dancing, each reflecting different aspects of Mongolian life, nature, and spirituality.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Biyelgee(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.biyelgee),
                              fit: BoxFit.cover)),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.005)
                                ])),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Biyelgee: The Mongolian Body Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tsam(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.tsam),
                              fit: BoxFit.cover)),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.005)
                                ])),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Tsam: The Ritual Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HorseDance(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.amber,
                      ),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.005)
                                ])),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Khuurchir: The Horse Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourtDance(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.court),
                              fit: BoxFit.cover)),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.005)
                                ])),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Uyach: The Court Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WrestlerDance(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(AppStyle.wrestler),
                              fit: BoxFit.cover)),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.005)
                                ])),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Bökh: The Dance of Wrestler',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
