import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Khustai_Nuruu_NP extends StatefulWidget {
  const Khustai_Nuruu_NP({super.key});

  @override
  State<Khustai_Nuruu_NP> createState() => _Khustai_Nuruu_NPState();
}

class _Khustai_Nuruu_NPState extends State<Khustai_Nuruu_NP> {
  PageController _controller1 = PageController();
  PageController _controller4 = PageController();
  PageController _controller2 = PageController();
  PageController _controller3 = PageController();
  PageController _controller5 = PageController();
  PageController _controller6 = PageController();
  PageController _controller7 = PageController();

  final List<String> TopImage = [
    // TOP
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/KHustaiNP-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/KHustaiNP-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/KHustaiNP-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/KHustaiNP-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/KHustaiNP-5.jpg',
  ];

  final List<String> Second = [
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-13.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-14.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-15.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-16.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-17.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-18.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/tahi/Tahi-19.jpg',
  ];
  final List<String> Third = [
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-9.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-10.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-11.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-12.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-13.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Buga/Buga-14.jpg',
  ];
  final List<String> Four = [
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Wildlife/Wildlife-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Wildlife/Wildlife-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Wildlife/Wildlife-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Wildlife/Wildlife-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Wildlife/Wildlife-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Wildlife/Wildlife-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Wildlife/Wildlife-7.jpg',
  ];
  final List<String> Five = [
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Khun Chuluu/Chuluu (1 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Khun Chuluu/Chuluu (2 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Khun Chuluu/Chuluu (3 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Khun Chuluu/Chuluu (4 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Khun Chuluu/Chuluu (5 of 6).jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Khun Chuluu/Chuluu (6 of 6).jpg',
  ];
  final List<String> Six = [
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-8.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Information Center/InformationCanter-9.jpg',
  ];
  final List<String> Seven = [
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-1.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-2.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-3.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-4.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-5.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-6.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-7.jpg',
    'http://192.168.1.83:8000/asset/Destinations/Nearby/Khustai Nuruu NP dutuu/Khustai Nuruu NP dutuu/Souvenir shop/SouvenirShop-8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                              controller: _controller1,
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
                              controller: _controller1,
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
                  Text(
                    'Khustai Nuruu NP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Khustai Nuruu National Park is a special place for nature lovers and anyone fascinated by wildlife. Located about 95 km west of Ulaanbaatar, this park is most famous for being the home of the Przewalski’s horse, or takhi as it’s known in Mongolian. These wild horses, once extinct in the wild, were reintroduced to their natural habitat right here in Khustai, and now the park is one of the best places in the world to see them roaming free. The takhi is an incredible animal—it’s actually the last truly wild horse species left in the world. Visiting the park gives you the rare opportunity to see these beautiful creatures in their natural environment, doing what they’ve done for centuries. The best time to spot them is early in the morning or late in the evening when they come down to the valleys to graze. But Khustai Nuruu isn’t just about the takhi. The park is also home to a variety of other wildlife, including deer, marmots, eagles, and even wolves if you’re lucky. The landscapes here are breathtaking—rolling hills, open steppe, and peaceful rivers. There are plenty of hiking trails for those who want to explore the park on foot, and it’s a great place for horseback riding as well. If you’re interested in Mongolia’s rich nomadic culture, Khustai also offers the chance to stay in a ger camp, where you can experience traditional Mongolian life up close. You’ll be surrounded by stunning nature, with the opportunity to ride horses, enjoy traditional food, and even visit local nomadic families. Whether you’re here for the wildlife, the landscapes, or just to escape the city and breathe some fresh air, Khustai Nuruu National Park is the perfect place to connect with nature and learn more about Mongolia’s incredible wildlife and culture.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Takhi (Przewalski’s Horse)',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#1862FF'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google map',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'The takhi is the crown jewel of Khustai Nuruu National Park. Once extinct in the wild, these horses were successfully reintroduced to the park, which is now one of the best places in the world to see them thriving. Early mornings and late evenings are the best times to spot takhi grazing in the valleys. Observing these wild horses in their natural environment is an unforgettable experience that highlights Mongolia’s dedication to wildlife conservation.'),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: size.width * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              SizedBox(
                                height: size.width * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: Second.length,
                                    controller: _controller2,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            Second[index],
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
                                    controller: _controller2,
                                    count: Second.length,
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
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // SECOND --------
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Deer',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#1862FF'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google map',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'In addition to the takhi, Khustai Nuruu is home to several deer species. These graceful animals can often be seen in the park’s woodlands and meadows, particularly during the cooler parts of the day. Deer play an important role in the ecosystem and add to the rich biodiversity that makes Khustai a fascinating place for wildlife enthusiasts.'),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: size.width * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              SizedBox(
                                height: size.width * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: Third.length,
                                    controller: _controller3,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            Third[index],
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
                                    controller: _controller3,
                                    count: Third.length,
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
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // 3------------------
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Wildlife',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#1862FF'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google map',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'Khustai Nuruu is teeming with wildlife, making it a paradise for animal lovers. Marmots, foxes, eagles, and vultures are common sights, while more elusive animals like wolves and lynxes offer a thrilling challenge for keen observers. The park’s diverse habitats provide a sanctuary for numerous species, offering endless opportunities for wildlife photography and exploration.'),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: size.width * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              SizedBox(
                                height: size.width * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: Four.length,
                                    controller: _controller4,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            Four[index],
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
                                    controller: _controller4,
                                    count: Four.length,
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
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // 4------------------
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Ancient Stones',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#1862FF'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google map',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'For history enthusiasts, the Khun Chuluu, or "Peoples Stones," found within the park add a cultural dimension to the visit. These ancient stone monuments, believed to date back to the Turkic period, offer insight into the region’s long and fascinating history. The stones are adorned with carvings and inscriptions, making them a must-see for anyone interested in Mongolia’s archaeological heritage.'),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: size.width * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              SizedBox(
                                height: size.width * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: Five.length,
                                    controller: _controller5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            Five[index],
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
                                    controller: _controller5,
                                    count: Five.length,
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
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // 5------------------
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Information Center',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#1862FF'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google map',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'The Information Center at Khustai Nuruu National Park is the ideal starting point for your visit. It offers detailed exhibits and educational materials about the park’s history, wildlife, and conservation efforts, including the reintroduction of the Przewalski’s horse. Knowledgeable staff are available to answer questions, provide maps, and recommend the best times and places for wildlife spotting. The center also hosts presentations and guided tours, making it a valuable resource for visitors looking to get the most out of their Khustai experience.'),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: size.width * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              SizedBox(
                                height: size.width * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: Six.length,
                                    controller: _controller6,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            Six[index],
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
                                    controller: _controller6,
                                    count: Six.length,
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
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // 6------------------
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Souvenir Shop',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#1862FF'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google map',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      'The Souvenir Shop at Khustai Nuruu National Park is the perfect place to take home a piece of your adventure. Featuring a wide range of locally made crafts, traditional Mongolian items, and wildlife-themed gifts, the shop offers something for everyone. From handcrafted felt products to unique takhi-inspired keepsakes, these souvenirs not only serve as reminders of your visit but also support local artisans and the park’s conservation efforts. Be sure to stop by before you leave!'),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: size.width * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              SizedBox(
                                height: size.width * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: Seven.length,
                                    controller: _controller7,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            Seven[index],
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
                                    controller: _controller7,
                                    count: Seven.length,
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
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // REEL -----------------
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(TopImage[0]), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width,
                    height: size.height * 0.7,
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  // REEL END ---------------------
                  SizedBox(
                    height: 15,
                  ),
                  // RECOMM ACC ----------------------
                  Text(
                    'Recommended accommodations',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                    ],
                  ),
                  // RECOMM ACC END ----------------------
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
