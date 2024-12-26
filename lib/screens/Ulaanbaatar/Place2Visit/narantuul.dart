import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class Narantuul extends StatefulWidget {
  const Narantuul({super.key});

  @override
  State<Narantuul> createState() => _NarantuulState();
}

class _NarantuulState extends State<Narantuul> {
  List<String> imageList = [
    "http://192.168.1.111:8000/asset/Other/narantuul_2.jpg",
    "http://192.168.1.111:8000/asset/Other/narantuul_1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController _controller_ = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(imageList[1], fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle,
                      ),
                      iconSize: 50,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 28,
                          color: const Color.fromARGB(255, 0, 0, 0)
                              .withOpacity(0.7),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: HexColor('#E8EFFF'),
                    ),
                    width: size.width,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Narantuul black market',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          ReadMoreText(
                            'Biggest and cheapest market in the capital city. Where average people go there to buy clothes, tools and food.Also many businesses provide their supplies from here. Beware of pickpocket.',
                            trimLines: 5,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Showmore',
                            trimExpandedText: 'Showless',
                            lessStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade500),
                            moreStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade500),
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          double latitude = 47.90936;
                          double longitude = 106.94813;
                          final String googleMapsLink =
                              "https://www.google.com/maps?q=$latitude,$longitude";
                          try {
                            await launch(googleMapsLink);
                          } catch (e) {
                            print("Error launching Google Maps: $e");
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_right_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Get Directions',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Stack(children: [
              SizedBox(
                height: size.width * 0.7,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    itemCount: imageList.length,
                    controller: _controller_,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            // color: color[index],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.network(
                            imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: size.width * 0.62,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: _controller_,
                    count: imageList.length,
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
              )
            ]),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nearby',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/2c11/3526/9cebfe886b0f5b298391f5846434fd16?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=THmPL7i3PhCnkxCX~borUY8Yub2zU18A8Suu62U6f1HBM0wkIBS4T~honBr93g6qRdNUl3e1QvctwGnaVnVuvIrTkiOlfaEIiIskhQyGGWlV9Z3wPjgvs8uJJJzsv6bjVXbEWFvwSNC4xbd2eGym6tfoydfjShq09fc~SeOldzd7fNZg9UjnG-V0kMOdjfVyTUkkrveYI8fD20qNSYhpEIEsTrV~WoSCUuSaj9ekfdvFHRF95tiFItS~ZdEnqxZl0NftXnCm9EWQSuQbhNjw54Ke53WzDMnhQRO7w6H8Ap5RSbC5HRF65WEklc-4xG6zvq-p38e~yNB1v9lZZDT38g__'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Gobi cashmere',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/d8ae/a037/0afb2f8de7011a6ea7ee0b9e5ea95e5a?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OlmhFftLbk2ex3bOx3H5DtoCBsFQd2~5SXLOqzav85IEF~OKHBavKTtP1Vu~ftDV8BW6~vEnG-vdvGSzwAcvEUaUyXkwswuNFrHaTkkMMwavzcpYx2E9Ystm587evc0SzxhfbYvedKV8etj2jRYHnk0WSdFx9LENuP8zBvXhlmWJyGMmLG5tcpeRzpl10jthqa~62zv3RD2IFCuM512OUNcdec913iaEA--q-OAiZpWC9XrWuRGxD-mCXJbloSskgdt0uaA9PwywLg8Ja1xulv22ZNJy535YqnXvamxD~yaWNkKbFeYWJBpFl62eSxhF4vT4naJQn5Whvjyr2AXbkA__'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'KFC',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ),
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/ae0a/c8cc/ec525101418414d83f780a53bb99e648?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LXo4LIxwahp0t95-HFCwRW06F~4j1mGeCc0vFqw21C0ScOfgAmOaB9~wMXgFEsi7vH2kgp66CMvmMNHPxeuyNmJWlh0a9fexDGKLippBN~lU8gTHZ3AZ7iGlJuL0zq6~VjValWIIYzR6B1M4zr4BJCkmbDgwK0VFjlmDpNgbS5cFl3g9Xw1skjnqEdjZT~EMzYDcZQog~kkPDykgM0tjj6SgzH6Oe4dfGn56xZeutJjonNOGMTMApffnLTa9AbHRTgAF~0XSit~Rf10dOIv5eBh6HK~esbJo-oE2RcuiMiBZSbxSDyBga8uFZx4lmSU0~EdT0Q~y77M13zKyQE2atQ__'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Maikhan tolgoi',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/b9d2/0bad/eb90fe91ae411c9ccdb56a48200fc9e4?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=c4ca4PVEGIeu-yi7roVdTAo2jdFIMKvYWK6njwebamZCO~9abq2FL2H919bd4TEHC2VW56YTA8yFCFsMIDJBeeZX1b3VsAEPAcfJzTEMWlmG1s7eokuM1A-l0w27uKJcmiV6IKMzJ04mcaTmJIhHOcHI-7Pe9mVG~50AP79z3j889L~bsfRul~4JDP-nvvzp6q8fmU28tISnY9I6BS6QQ7cWt-Fxht9MFdiO8Axe837uwo7vS9aNXTpVMYyuV~GvCd2IZYeiNRuPYdTBjubWmzLaQgdTB4rIapnVv-yG2OSiGiyf9SZe4jT-j7wQk8rFr3RkwtUoQkj59T2UIRnigg__'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Asa Land',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
