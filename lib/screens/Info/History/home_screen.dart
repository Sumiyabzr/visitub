import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:visitub/screens/Info/History/Product/20th.dart';
import 'package:visitub/screens/Info/History/Product/ancient.dart';
import 'package:visitub/screens/Info/History/Product/empire.dart';
import 'package:visitub/screens/Info/History/Product/modern.dart';
import 'package:visitub/screens/Info/History/Product/post_imperial.dart';
import 'package:visitub/style/app_style.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      child: AncientMongolia(),
                      type: PageTransitionType.fade,
                      duration: 900.ms,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AppStyle.ancient),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(10),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Ancient Mongolia',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ).animate().slide(delay: 1000.ms, duration: 1500.ms),
                      ),
                    ),
                  ),
                ),
              )
                  .animate()
                  .fade(delay: 500.ms, duration: 800.ms)
                  .move(delay: 1000.ms, duration: 1500.ms),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      child: MNEmpire(),
                      type: PageTransitionType.fade,
                      duration: 900.ms,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AppStyle.empire),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(10),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'The Mongol Empire (13th - 14th centuries)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ).animate().slide(delay: 1000.ms, duration: 1500.ms),
                      ),
                    ),
                  ),
                ),
              )
                  .animate()
                  .fade(delay: 500.ms, duration: 800.ms)
                  .move(delay: 1000.ms, duration: 1500.ms),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      child: PostImperial(),
                      type: PageTransitionType.fade,
                      duration: 900.ms,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AppStyle.period),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(10),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Post-Imperial Period (15th - 19th centuries)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ).animate().slide(delay: 1000.ms, duration: 1500.ms),
                      ),
                    ),
                  ),
                ),
              )
                  .animate()
                  .fade(delay: 500.ms, duration: 800.ms)
                  .move(delay: 1000.ms, duration: 1500.ms),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      child: Independence(),
                      type: PageTransitionType.fade,
                      duration: 900.ms,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AppStyle.independence),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(10),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Independence and 20th Century',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ).animate().slide(delay: 1000.ms, duration: 1500.ms),
                      ),
                    ),
                  ),
                ),
              )
                  .animate()
                  .fade(delay: 500.ms, duration: 800.ms)
                  .move(delay: 1000.ms, duration: 1500.ms),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      child: ModernMongolia(),
                      type: PageTransitionType.fade,
                      duration: 900.ms,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AppStyle.modern),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(10),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Modern Mongolia',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ).animate().slide(delay: 1000.ms, duration: 1500.ms),
                      ),
                    ),
                  ),
                ),
              )
                  .animate()
                  .fade(delay: 500.ms, duration: 800.ms)
                  .move(delay: 1000.ms, duration: 1500.ms),
            ],
          ),
        ),
      ),
    );
  }
}
