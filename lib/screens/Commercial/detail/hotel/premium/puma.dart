import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Puma extends StatefulWidget {
  const Puma({super.key});

  @override
  State<Puma> createState() => _PumaState();
}

class _PumaState extends State<Puma> {
  late YoutubePlayerController _youtubeController;

  final List<String> imageList = [
    // THUMB
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Thumbnail/PumaThumbnail-1.jpg'
  ];

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Top/PumaT-1.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Top/PumaTop-2.jpg',
  ];

  final List<String> RoomImage = [
    // Rooms
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Room/pumaRoom-1.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Room/pumaRoom-2.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Room/pumaRoom-3.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Room/pumaRoom-4.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Room/pumaRoom-5.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Room/pumaRoom-6.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Room/pumaRoom-7.jpg',
  ];

  final List<String> ConferenceRoom = [
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Hurliin tanhim/Khurliin tankhim1/pumaHurliinTanhim1-1.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Hurliin tanhim/Khurliin tankhim2/pumaHurliinTanhim2.jpg',
  ];

  final List<String> ServicesImage = [
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/Tuushin/Service/TuushinService-2.jpg',
    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/Tuushin/Service/TuushinService-3.jpg'
  ];

  bool showYoutubePlayer = false;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
        initialVideoId: '8-5w56VxRVg',
        flags: YoutubePlayerFlags(autoPlay: true, mute: false));
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: size.width * 0.7,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(children: [
                        SizedBox(
                          height: size.width * 0.7,
                          width: MediaQuery.of(context).size.width,
                          child: PageView.builder(
                              itemCount: TopImage.length,
                              controller: _controller,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 0),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      // color: color[index],
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                    ),
                                    child: Image.network(
                                      TopImage[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: size.width * 0.68,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: TopImage.length,
                              effect: ScrollingDotsEffect(
                                  activeDotScale: 1,
                                  activeStrokeWidth: 1,
                                  fixedCenter: true,
                                  activeDotColor: Colors.red,
                                  dotColor: Colors.grey,
                                  dotHeight: 10,
                                  dotWidth: 10),
                            ),
                          ),
                        ),
                        SafeArea(
                            child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                )))
                      ]),
                      // Container(
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.only(
                      //         bottomLeft: Radius.circular(10),
                      //         bottomRight: Radius.circular(10),
                      //       ),
                      //       image: DecorationImage(
                      //           image: NetworkImage(
                      //               'http://192.168.1.83:8000/asset/Commercial/Hotel/Tuushin/TuushinE (2 of 9).jpg'),
                      //           fit: BoxFit.cover)),
                      // )
                    ),
                    SafeArea(
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(imageList[0]),
                                fit: BoxFit.cover)),
                        width: size.width * 0.23,
                        height: size.width * 0.23,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Puma',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: HexColor('#FDBE02'),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.favorite_border,
                        color: HexColor('#B91332'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: HexColor('#E8EFFF'),
                    ),
                    width: size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.phone_outlined,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '+976 11 313043',
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.copy,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.mail_outline_outlined,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'marketing@pumahotel.com',
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.copy,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.sports_basketball_outlined,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'pumaimperialhotel.com',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                child: Icon(
                                  Icons.facebook,
                                  color: Colors.blue.shade500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '"Puma Imperial" Hotel',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Puma Imperial Hotel: Centrally located in Ulaanbaatar, offering cozy rooms and easy access to attractions.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ]),
                  GestureDetector(
                    onTap: () async {
                      double latitude = 47.92142;
                      double longitude = 106.91943;
                      final String googleMapsLink =
                          "https://www.google.com/maps?q=$latitude,$longitude";
                      try {
                        await launch(googleMapsLink);
                      } catch (e) {
                        print('Error launching Google Maps: $e');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#E8EFFF')),
                      width: size.width,
                      height: size.height * 0.25,
                      child: Icon(
                        Icons.location_on_sharp,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ROOMS -------------------------------------------------------------------------------------------------------------------
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rooms',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            Container(
              height: size.width * 0.7,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Stack(children: [
                        Container(
                          width: size.width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(color: HexColor('#E8EFFF'))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 15, bottom: 60),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(RoomImage[0]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: size.width,
                              height: size.height,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Room 1',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              // Text('30m2 | 2 persons', style: TextStyle(color: HexColor('#1862FF')),)
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Stack(children: [
                          Container(
                            width: size.width * 0.85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(color: HexColor('#E8EFFF'))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 60),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(RoomImage[1]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: size.width,
                                height: size.height,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Room 2',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                // Text('30m2 | 2 persons', style: TextStyle(color: HexColor('#1862FF')),)
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Stack(children: [
                          Container(
                            width: size.width * 0.85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(color: HexColor('#E8EFFF'))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 60),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(RoomImage[2]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: size.width,
                                height: size.height,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Room 3',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                // Text('30m2 | 2 persons', style: TextStyle(color: HexColor('#1862FF')),)
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Stack(children: [
                          Container(
                            width: size.width * 0.85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(color: HexColor('#E8EFFF'))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 60),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(RoomImage[3]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: size.width,
                                height: size.height,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Room 4',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                // Text('30m2 | 2 persons', style: TextStyle(color: HexColor('#1862FF')),)
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Stack(children: [
                          Container(
                            width: size.width * 0.85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(color: HexColor('#E8EFFF'))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 60),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(RoomImage[4]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: size.width,
                                height: size.height,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Room 5',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                // Text('30m2 | 2 persons', style: TextStyle(color: HexColor('#1862FF')),)
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Rooms end -------------------------------------------------------------------------------------------------------

            // Conference Rooms --------------------------------------------------------------------------------------------------
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Conference Rooms',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            Container(
              height: size.width * 0.7,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Stack(children: [
                        Container(
                          width: size.width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(color: HexColor('#E8EFFF'))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 15, bottom: 60),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(ConferenceRoom[0]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: size.width,
                              height: size.height,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Conference room 1',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              // Text('362m2 | 250 persons', style: TextStyle(color: HexColor('#1862FF')),)
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Stack(children: [
                        Container(
                          width: size.width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(color: HexColor('#E8EFFF'))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 15, bottom: 60),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(ConferenceRoom[1]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: size.width,
                              height: size.height,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Conference room 2',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              // Text('362m2 | 250 persons', style: TextStyle(color: HexColor('#1862FF')),)
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            // Conference Rooms End -------------------------------------------------------------------------------------------------------

            // Services -----------------------------------------------------------------------------------------------------
            // SizedBox(height: 15,),
            // Padding(
            //   padding: EdgeInsets.only(left: 15, right: 15),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Services', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
            //       Icon(Icons.arrow_forward_ios_rounded)
            //     ],
            //   ),
            // ),
            // Container(
            //   height: size.width * 0.7,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       InkWell(
            //         child: Padding(
            //           padding: EdgeInsets.only(left: 15),
            //           child: Stack(
            //             children: [
            //               Container(
            //                 width: size.width * 0.85,
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(15),
            //                   color: Colors.white,
            //                   border: Border.all(color: HexColor('#E8EFFF'))
            //                 ),
            //                 child: Padding(
            //                   padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 60),
            //                   child: Container(
            //                     decoration: BoxDecoration(
            //                       image: DecorationImage(image: NetworkImage(ServicesImage[0]),
            //                       fit: BoxFit.cover),
            //                       borderRadius: BorderRadius.circular(15),
            //                     ),
            //                     width: size.width,
            //                     height: size.height,
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsets.only(left: 15, bottom: 10),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   mainAxisAlignment: MainAxisAlignment.end,
            //                   children: [
            //                     Text('Services 1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
            //                     // Text('30m2 | 2 persons', style: TextStyle(color: HexColor('#1862FF')),)
            //                   ],
            //                 ),
            //               )
            //             ]
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(right: 15),
            //         child: InkWell(
            //           child: Padding(
            //             padding: EdgeInsets.only(left: 15),
            //             child: Stack(
            //               children: [
            //                 Container(
            //                   width: size.width * 0.85,
            //                   decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(15),
            //                     color: Colors.white,
            //                     border: Border.all(color: HexColor('#E8EFFF'))
            //                   ),
            //                   child: Padding(
            //                     padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 60),
            //                     child: Container(
            //                       decoration: BoxDecoration(
            //                         image: DecorationImage(image: NetworkImage(ServicesImage[1]),
            //                         fit: BoxFit.cover),
            //                         borderRadius: BorderRadius.circular(15),
            //                       ),
            //                       width: size.width,
            //                       height: size.height,
            //                     ),
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: EdgeInsets.only(left: 15, bottom: 10),
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     mainAxisAlignment: MainAxisAlignment.end,
            //                     children: [
            //                       Text('Services 2', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
            //                       // Text('30m2 | 2 persons', style: TextStyle(color: HexColor('#1862FF')),)
            //                     ],
            //                   ),
            //                 )
            //               ]
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SERVICES END //////////////////////////////////
            // Promotional video -----------------------------------------------------------------------------------------------------
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Promotional video',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: size.width,
                  height: size.height * 0.25,
                  child: showYoutubePlayer
                      ? YoutubePlayer(
                          controller: _youtubeController,
                          showVideoProgressIndicator: true,
                        )
                      : Stack(
                          alignment: Alignment.center,
                          fit: StackFit.expand,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(imageList[0]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                              width: size.width,
                              height: size.height * 0.25,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    showYoutubePlayer = true;
                                  });
                                },
                                child: Icon(
                                  Icons.play_circle,
                                  size: 50,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ],
                        )),
            ),
            // Promotional video END ----------------------------------------------------------------------
            // Reviews --------------------------------------------------------------------------------------
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reviews',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: HexColor('#E8EFFF'),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  imageList[0],
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Yesugen Erkhem',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              Row(children: [
                                Wrap(
                                  children: List.generate(
                                      5,
                                      (index) => Icon(
                                            Icons.star,
                                            size: 15,
                                            color: HexColor('#FDBE02'),
                                          )),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '7 months ago',
                                  style: TextStyle(color: HexColor('#1862FF')),
                                )
                              ]),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                          textAlign: TextAlign.justify,
                          'i will highly recommended this place. you have a chance to meet Asashōryū Akinori professional sumo wrestler. He was the 68th yokozuna in the history of the sport in Japan. He was one of the most successful yokozuna ever.'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imageList[0]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber,
                            ),
                            width: size.width * 0.35,
                            height: size.width * 0.35,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imageList[0]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber,
                            ),
                            width: size.width * 0.35,
                            height: size.width * 0.35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor('#E8EFFF'),
                ),
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  imageList[0],
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Gan Och',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              Row(children: [
                                Wrap(
                                  children: List.generate(
                                      4,
                                      (index) => Icon(
                                            Icons.star,
                                            size: 15,
                                            color: HexColor('#FDBE02'),
                                          )),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '3 months ago',
                                  style: TextStyle(color: HexColor('#1862FF')),
                                )
                              ]),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Great memories...★★★ in kharkhorin',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Reviews END --------------------------------------------------------------------------------------

            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
