import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/History/Product/20th.dart';
import 'package:visitub/screens/Info/History/Product/ancient.dart';
import 'package:visitub/screens/Info/History/Product/empire.dart';
import 'package:visitub/screens/Info/History/Product/modern.dart';
import 'package:visitub/screens/Info/History/Product/post_imperial.dart';

class HistoryInfo extends StatefulWidget {
  const HistoryInfo({super.key});

  @override
  State<HistoryInfo> createState() => _HistoryInfoState();
}

class _HistoryInfoState extends State<HistoryInfo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'History',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            PageTransition(
                                child: AncientMongolia(),
                                type: PageTransitionType.leftToRightWithFade,
                                duration: 300.ms)),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/ThumnbailApp/Ancient Mongolia.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Ancient Mongolia',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: Independence(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 300.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/images/Independance-1.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Independence and 20th Century',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: MNEmpire(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 300.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/ThumnbailApp/Mongol Empire.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'The Mongol Empire (13th - 14th centuries)',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: PostImperial(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 300.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/images/ulaanbaatar history/qing.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Post-Imperial Period (15th - 19th centuries)',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  PageTransition(
                    child: ModernMongolia(),
                    type: PageTransitionType.bottomToTop,
                    duration: 300.ms,
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/ThumnbailApp/Modern Mongolia.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  width: size.width,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Modern Mongolia',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
