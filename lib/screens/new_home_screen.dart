import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitub/bloc/bloc.dart';
import 'package:visitub/bloc/events.dart';
import 'package:visitub/bloc/states.dart';
import 'package:visitub/components/new_home_card.dart';
import 'package:visitub/screens/Profile/profile.dart';
import 'package:visitub/screens/TopDestAcc/dest/Genghis.dart';
import 'package:visitub/screens/TopDestAcc/dest/Khongoryn.dart';
import 'package:visitub/screens/TopDestAcc/dest/Ulaan.dart';
import 'package:visitub/screens/TopDestAcc/dest/acc/asaland.dart';
import 'package:visitub/screens/TopDestAcc/dest/acc/gobi.dart';
import 'package:visitub/screens/TopDestAcc/dest/acc/resortworldterelj.dart';
import 'package:visitub/screens/coming_soon_pop_up.dart';
import 'package:visitub/style/app_style.dart';

class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({super.key});

  @override
  State<NewHomeScreen> createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
  final _categoryBloc = CategoryBloc();
  final _productBloc = ProductBloc();
  final _eventCategoryBloc = EventCategoryBloc();
  final _eventProductBloc = EventProductBloc();
  final _commCategoryBloc = CommCategoryBloc();
  final _commProductBloc = CommProductBloc();
  final _culturalCategoryBloc = CulturalCategoryBloc();
  final _culturalProductBloc = CulturalProductBloc();
  bool _loading = false;
  bool _error = false;

  @override
  void initState() {
    super.initState();
    _categoryBloc.add(CategoryGetAll());
    _productBloc.add(ProductGetAll());
    _eventCategoryBloc.add(EventCategoryGetAll());
    _eventProductBloc.add(EventProductGetAll());
    _commCategoryBloc.add(CommCategoryGetAll());
    _commProductBloc.add(CommProductGetAll());
    _culturalCategoryBloc.add(CulturalCategoryGetAll());
    _culturalProductBloc.add(CulturalProductGetAll());
  }

  @override
  Widget build(BuildContext context) {
    List<String> Home_photo = [
      "http://192.168.1.111:8000/asset/images/gobi.png",
      "http://192.168.1.111:8000/asset/images/deelte.jpg",
    ];
    List<String> Home_photo1 = [
      "http://192.168.1.111:8000/asset/images/moriduud.jpg",
      "http://192.168.1.111:8000/asset/images/deeltei1.jpg",
    ];

    List<List> Topics = [
      [
        "Ulaanbaatar",
        "http://192.168.1.111:8000/asset/images/VisitUb.jpg",
        // "assets/images/VisitUb.jpg",
      ],
      [
        "Destinations",
        "http://192.168.1.111:8000/asset/images/Destination.jpg",
        // "assets/images/Destination.jpg",
      ],
      [
        "Information",
        "http://192.168.1.111:8000/asset/images/Information.jpg",
        // "assets/images/Information.jpg",
      ],
      // [
      //   "Tours",
      //   "assets/images/ToursIcon.png",
      // ],
      [
        "Commercial",
        "http://192.168.1.111:8000/asset/images/Commercial1.jpg",
        // "assets/images/Commercial1.jpg",
      ],
      [
        "Events",
        "http://192.168.1.111:8000/asset/images/Events.jpg",
        // "assets/images/Events.jpg",
      ],
      [
        "Accommodation",
        "http://192.168.1.111:8000/asset/images/Accommodation.jpg",
        // "assets/images/Accommodation.jpg",
      ],
      // [
      //   "Maps",
      //   "assets/images/MapsIcon.png",
      // ]
    ];
    final size = MediaQuery.of(context).size;
    PageController _controller = PageController();
    PageController _controller_ = PageController();
    return MultiBlocListener(
      listeners: [
        BlocListener<ProductBloc, ProductState>(
          bloc: _productBloc,
          listener: (context, state) {
            if (state is ProductLoading) {
              setState(() {
                _loading = true;
                _error = false;
              });
            }
            if (state is ProductSuccess) {
              setState(() {
                _loading = false;
              });
            }
            if (state is ProductFailure) {
              _loading = false;
              _error = true;
            }
          },
        )
      ],
      child: _loading
          ? const Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: SizedBox(
                  child: CircularProgressIndicator(color: Colors.blueAccent),
                ),
              ),
            )
          : Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "http://192.168.1.111:8000/asset/images/Nomadic.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                          width: size.width,
                          height: size.height * 0.4,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                                // gradient: LinearGradient(
                                //   begin: Alignment.bottomCenter,
                                //   end: Alignment.center,
                                //   colors: [
                                //     const Color.fromARGB(255, 255, 255, 255),
                                //     const Color.fromARGB(255, 255, 255, 255)
                                //         .withOpacity(0.1),
                                //   ],
                                // ),
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: SafeArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    // Container(
                                    //   width: size.width * 0.65,
                                    //   child: TextField(
                                    //     decoration: InputDecoration(
                                    //         filled: true,
                                    //         fillColor: Colors.white,
                                    //         border: OutlineInputBorder(
                                    //           borderRadius:
                                    //               BorderRadius.circular(8),
                                    //           borderSide: BorderSide.none,
                                    //         ),
                                    //         hintText: 'Search',
                                    //         prefixIcon: Icon(Icons.search)),
                                    //   ),
                                    // ),
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //       borderRadius:
                                    //           BorderRadius.circular(50),
                                    //       color: Colors.white),
                                    //   width: 50,
                                    //   height: 50,
                                    //   child: Icon(
                                    //     Icons.shopping_cart_rounded,
                                    //     color: HexColor('#013B7D'),
                                    //   ),
                                    // ),
                                    // GestureDetector(
                                    //   onTap: () => Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //         builder: (context) => Profile(),
                                    //       )),
                                    //   child: Container(
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(50),
                                    //         color: Colors.white),
                                    //     width: 50,
                                    //     height: 50,
                                    //     child: Icon(
                                    //       Icons.account_circle_outlined,
                                    //       size: 35,
                                    //       color: HexColor('#013B7D'),
                                    //     ),
                                    //   ),
                                    // )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 15),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Escape to the',
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                            .animate()
                                            .flipV(
                                                duration: 500.ms, delay: 500.ms)
                                            .moveY(
                                              delay: 600.ms,
                                              duration: 500.ms,
                                            ),
                                        Text(
                                          'Land of Stories',
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                            .animate()
                                            .flipV(
                                                duration: 500.ms, delay: 500.ms)
                                            .moveY(
                                              delay: 600.ms,
                                              duration: 900.ms,
                                            ),
                                        Text(
                                          'Mongolia',
                                          style: GoogleFonts.marckScript(
                                              fontSize: 38,
                                              color: Colors.white),
                                          // TextStyle(
                                          //     fontSize: 24,
                                          //     color: Colors.white,
                                          //     fontWeight: FontWeight.bold
                                          //     ),
                                        )
                                            .animate()
                                            .flipV(
                                                duration: 500.ms, delay: 500.ms)
                                            .moveY(
                                              delay: 600.ms,
                                              duration: 1300.ms,
                                            ),
                                        // Align(
                                        //   alignment: Alignment.center,
                                        //   child: Icon(
                                        //     Icons.play_circle_fill_outlined,
                                        //     size: 50,
                                        //     color: Colors.white,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Wrap(
                        spacing: 5,
                        runSpacing: 15,
                        children: List.generate(Topics.length,
                                (index) => NewHomeCard(Topics[index]))
                            .animate()
                            .fade(delay: 800.ms)
                            .slide(delay: 500.ms, duration: 800.ms),
                      ),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: size.height * 0.3,
                          width: size.width,
                          child: PageView.builder(
                              controller: _controller,
                              itemCount: Home_photo.length,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image:
                                              NetworkImage(Home_photo1[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.28,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: Home_photo.length,
                              effect: ScrollingDotsEffect(
                                  activeDotScale: 1,
                                  activeStrokeWidth: 1,
                                  fixedCenter: true,
                                  activeDotColor: Colors.red,
                                  dotColor: Color.fromARGB(255, 109, 109, 109),
                                  dotHeight: 8,
                                  dotWidth: 8),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Accomodation',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // IconButton(onPressed: () {
                              //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                              // }, icon: Icon(Icons.arrow_forward_rounded, color: Colors.black,))
                              GestureDetector(
                                onTap: () {
                                  // showDialog(context: context, builder: (context) => Coming_Soon(),);
                                },
                                child: Icon(Icons.arrow_forward_rounded,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ResortWorldTerelj('accProduct'),
                                    )),
                                // () {
                                //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                                // },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'http://192.168.1.111:8000/asset/Accommodition/Nearby/Terelj/RWT/Acc-550.jpg'),
                                            fit: BoxFit.cover)),
                                    width: size.width * 0.3,
                                    height: size.width * 0.35),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          AsaLand('accProduct'),
                                    )),
                                // () {
                                //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                                // },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'http://192.168.1.111:8000/asset/Other/asaland_home.jpg'),
                                            fit: BoxFit.cover)),
                                    width: size.width * 0.3,
                                    height: size.width * 0.35),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Gobi('accProduct'),
                                    )),
                                // () {
                                //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                                // },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'http://192.168.1.111:8000/asset/Accommodition/Southern/TsagaanSuvraga/Gobi/Acc-285.jpg'),
                                            fit: BoxFit.cover)),
                                    width: size.width * 0.3,
                                    height: size.width * 0.35),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: size.width * 0.3,
                                    child: Text(
                                      'Resort World Terelj',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.3,
                                    child: Text(
                                      'Asa Land',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.3,
                                    child: Text(
                                      'Gobi Caravanserai',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // showDialog(context: context, builder: (context) => Coming_Soon(),);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.111:8000/asset/yy.png'),
                                          alignment: Alignment.centerRight,
                                          fit: BoxFit.contain),
                                      color: Colors.black),
                                  width: size.width,
                                  height: size.height * 0.1,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Энд сурталчлаарай ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'Сурталчилгаагаа өнөөдрөөс эхлүүл',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Top destinations',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // showDialog(context: context, builder: (context) => Coming_Soon(),);
                                    },
                                    child: Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: size.width * 0.45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.symmetric(horizontal: 15),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopGenghis(),
                                  )),
                              // () {
                              //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                              // },
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://192.168.1.111:8000/asset/Destination/Nearby/GenghisComplex/Main Genghis Khan Statue complex.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                ),
                                child: Container(
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1,
                                          sigmaY: 5,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Container(
                                            width: size.width * 0.3,
                                            child: Text(
                                              'Genghis Khan Statue Complex',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TopKhongorynEls(),
                                )),
                            // () {
                            //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                            // },
                            child: Container(
                              alignment: Alignment.center,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://192.168.1.111:8000/asset/Other/hongoriin_els_1.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                              child: Container(
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 1,
                                        sigmaY: 5,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          width: size.width * 0.3,
                                          child: Text(
                                            'Khongoryn Els',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.symmetric(horizontal: 15),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TopUlaanTsutgalan(),
                                  )),
                              // () {
                              //   showDialog(context: context, builder: (context) => Coming_Soon(),);
                              // },
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://192.168.1.111:8000/asset/Destination/Central/UlaanTsutgalan/Ulaan Tsutgalan-3Z.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                ),
                                child: Container(
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1,
                                          sigmaY: 5,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Container(
                                            width: size.width * 0.3,
                                            child: Text(
                                              'Ulaan tsutgalan',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: size.height * 0.6,
                          width: size.width,
                          child: PageView.builder(
                              controller: _controller_,
                              itemCount: Home_photo.length,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image:
                                              NetworkImage(Home_photo[index]),
                                          //  image: DecorationImage(image: NetworkImage(data[1][2]), fit: BoxFit.cover)
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.58,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: _controller_,
                              count: Home_photo.length,
                              effect: ScrollingDotsEffect(
                                  activeDotScale: 1,
                                  activeStrokeWidth: 1,
                                  fixedCenter: true,
                                  activeDotColor: Colors.red,
                                  dotColor: Color.fromARGB(255, 109, 109, 109),
                                  dotHeight: 8,
                                  dotWidth: 8),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

                                // child: Padding(
                                //   padding: EdgeInsets.all(8),
                                //   child: Text(
                                //     'Genghis Khan Statue Complex',
                                //     textAlign: TextAlign.center,
                                //     style: TextStyle(
                                //         fontSize: 12,
                                //         fontWeight: FontWeight.bold,
                                //         color: Colors.white),
                                //   ),
                                // ),
                          