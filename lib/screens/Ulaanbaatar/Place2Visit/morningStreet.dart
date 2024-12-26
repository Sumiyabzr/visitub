import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class MorningStreet extends StatefulWidget {
  const MorningStreet({super.key});

  @override
  State<MorningStreet> createState() => _MorningStreetState();
}

class _MorningStreetState extends State<MorningStreet> {
  List<String> imageList = [
    "http://192.168.1.111:8000/asset/Other/ugluu2.jpg",
    "http://192.168.1.111:8000/asset/Other/ugluu1.jpg",
    "http://192.168.1.111:8000/asset/Other/ugluu3.jpg",
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
                        icon: Icon(Icons.arrow_back_rounded,
                            size: 28, color: Colors.black),
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
                            'Morning street',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          ReadMoreText(
                            '500m away from the central square, there is a beautiful street with colorful buildings, many kinds of cafes and coffee shops. People love to have breakfast there, on the way to their work. Businesses in this area start early in the morning. That`s why it`s called morning street.',
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
                          double latitude = 47.91985;
                          double longitude = 106.9142;
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
                                    'https://s3-alpha-sig.figma.com/img/2c11/3526/9cebfe886b0f5b298391f5846434fd16?Expires=1704067200&Signature=fMO6JeXnAewx03kXLp~90bZmfWoFVsxMjbts7l1MWQMPE1ylKrMUzcJErqKQlUWB-igxAF~6hJ~ap5t~W59aml8X8zLwTwXdRIjirNCOdlbRvMxAoVUyJiUMjYtAO9i~maMf~bo906wP43yGJN1O6-8tEJ6GUZAPqlezVH-erNjV4UKBHNRaKwgh9TbulFKAbi0~hGpwGmQM45skeKGH~9DRvxayJcIHLqaQ7QoqgxtpfxzwU-dEsrdR1fNgfBw4KO~zKnY4iT5wxcvSkOeNygnRWZ2IsgiPpBmlZ-fmUXj7avr1dCMA2Ync-tL2hL1NeFKh0IfSLd0iBmBqXOBIjw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
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
                                    'https://s3-alpha-sig.figma.com/img/d8ae/a037/0afb2f8de7011a6ea7ee0b9e5ea95e5a?Expires=1704067200&Signature=klTgxXmMlGRFl9fiJizDkj1M2Eah1iLRbOI29qCbZ8uBZkw1pRfN7zeaEnaehSHOTpXoyVhmnlvmYBRWKg-eD2ZTxbx849HMLO0bHr85SyWJ2ATujORwtHWGAEMHa2lcx6BH6ZIinCBn6coyO2Dh~M66BLjEsulqCQhobdLdROYueyAelz7fiVkkpsERGYB89fOlOxehFX8auYTnRWb~hVRPgzc0OZOwdMWudNPhFnblgQIZfoooInsrWDmdk51wusl4LIIc-QHx2coRCdLUbyYPYSQQwxf~9QnlfCT~dtf2GPJyWhQBmZPA1cQ9kzhoO2Ha59-Sl8B-JQjeLhUaKw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
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
                                    'https://s3-alpha-sig.figma.com/img/ae0a/c8cc/ec525101418414d83f780a53bb99e648?Expires=1704067200&Signature=FjKjc01kCExW63ToM330647M6RFkfJQ8KI8bjcRSoKXw0fxh1iLVwCL5~R3pIjtTd5Xg8U0LKB0cf1fHAfnBmR5aCrqetCfRuXbebbI79-Nkyuc7N9VhYVQHCqVg6oPxDEow2j4O5h275dEeiNCQxbeaIJitC7bxsxEgvppJOAGGL-2bvpldtS4lmfKPKX7Ai7VxsoWBGwGg-Dm8UWlxw8tok7slykOCwpEYb1QDdHPt~Vx3jxBu9KvqxnM1ZlKRfwx68U-ApSbIYxI2vcBEoVoBJ4aTmJV9LznUopX9Rc4QW8nhz8OfH44Ejw8JT91xlJ6XG8wTzdGXGwMoSqJkbA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
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
                                    'https://s3-alpha-sig.figma.com/img/b9d2/0bad/eb90fe91ae411c9ccdb56a48200fc9e4?Expires=1704067200&Signature=NoPVx4D1w3eD5OJ8PqOpSTmZGJie4E5Vm~iclU1LQx6MkcecLMKr6511tL0XRoD5J94KOM4kvpvjtO7stYlQkrV1zAlUJHCJ1HNFiPngFk6qPP9tFKCL6LwNL0jrwXygts9eJRAEJDS~~KZcipohsTWMHZMz4SFsbKkbBZhC4wU1p7m2T3nYfi5MuSP-qIwcfndaRIp5um5o9ssemBGgf5QWDt32faHZc4qEQHdD~FxSwn-bctua~gQ1BkZPZqfgRmo3~vcsqMUg2Oc~WJFa~ODAftiJBEoOt3y02FslMpLcSfBaH84JIhLOkPACX4LeJjSYcuPU31vwGvqGWTI~FA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
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
