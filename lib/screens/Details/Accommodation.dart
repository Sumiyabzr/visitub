import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitub/provider/common.dart';
import 'package:visitub/screens/Details/ACCOMMODATION/overview.dart';

class AccDetail extends StatefulWidget {
  final String data;
  const AccDetail(this.data, {super.key});

  @override
  State<AccDetail> createState() => _AccDetailState();
}

class _AccDetailState extends State<AccDetail> {
  PageController _controller_ = PageController();
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return widget.data == "commProduct"
        ? Scaffold(
            body: Consumer<CommonProvider>(
              builder: (context, provider, child) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      /////////////////////////////////////////////////////////////////////
                      Stack(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                  height: size.width * 0.7,
                                  width: MediaQuery.of(context).size.width,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "http://192.168.1.83:8000/asset/" +
                                                    provider.getProducts(widget
                                                                    .data)![
                                                                provider
                                                                    .categoryIndex]
                                                            [
                                                            provider
                                                                .productIndex]
                                                        ['photo1']),
                                            fit: BoxFit.cover)),
                                  )),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "http://192.168.1.83:8000/asset/" +
                                                provider.getProducts(
                                                                widget.data)![
                                                            provider
                                                                .categoryIndex]
                                                        [provider.productIndex]
                                                    ['photo'],
                                          ),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.23,
                                  height: size.width * 0.23,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      provider.getProducts(widget.data)![
                                              provider.categoryIndex]
                                          [provider.productIndex]['name'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
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
                                            provider.getProducts(widget.data)![
                                                        provider.categoryIndex]
                                                    [provider.productIndex]
                                                ['Phonenumber'],
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
                                            borderRadius:
                                                BorderRadius.circular(4),
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
                                            provider.getProducts(widget.data)![
                                                        provider.categoryIndex]
                                                    [provider.productIndex]
                                                ['Email'],
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
                                            borderRadius:
                                                BorderRadius.circular(4),
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
                                            provider.getProducts(widget.data)![
                                                    provider.categoryIndex]
                                                [provider.productIndex]['link'],
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
                                            borderRadius:
                                                BorderRadius.circular(4),
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
                                            provider.getProducts(widget.data)![
                                                        provider.categoryIndex]
                                                    [provider.productIndex]
                                                ['facebook'],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      provider.getProducts(widget.data)![
                                                  provider.categoryIndex]
                                              [provider.productIndex]
                                          ['description'],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Stack(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      child: Container(
                                          width: size.width,
                                          height: size.width,
                                          child: GridView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemCount: provider
                                                  .getProducts(widget.data)![
                                                      provider.categoryIndex]
                                                      [provider.productIndex]
                                                      ['Image']
                                                  .length,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 2,
                                                      crossAxisSpacing: 5,
                                                      mainAxisSpacing: 5),
                                              itemBuilder: (context, index) {
                                                return Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                            "http://192.168.1.83:8000/asset/" +
                                                                provider.getProducts(
                                                                        widget
                                                                            .data)![
                                                                    provider
                                                                        .categoryIndex][provider
                                                                    .productIndex]['Image'][index],
                                                          ),
                                                          fit: BoxFit.cover)),
                                                );
                                              })),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // TabBar(
                            //   labelColor: Colors.black,
                            //   isScrollable: true,
                            //   indicator: BoxDecoration(
                            //     gradient: LinearGradient(
                            //         begin: Alignment.centerLeft,
                            //         end: Alignment.centerRight,
                            //         colors: [
                            //           HexColor('#1862FF'),
                            //           HexColor('#5A9BF8')
                            //         ]),
                            //     borderRadius: BorderRadius.circular(30),
                            //   ),
                            //   tabs: [
                            //     Tab(
                            //       text: 'Overview',
                            //     ),
                            //     // Tab(
                            //     //   text: 'Services',
                            //     // ),
                            //     // Tab(
                            //     //   text: 'Reviews',
                            //     // ),
                            //     // Tab(
                            //     //   text: 'Menu',
                            //     // ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      // Expanded(
                      //     child: TabBarView(children: [
                      //   Center(
                      //     child: CommOverview("commProduct"),
                      //   ),
                      //   // Center(
                      //   //   child: CommServices(),
                      //   // ),
                      //   // Center(
                      //   //   child: CommReviews(),
                      //   // ),
                      //   // Center(
                      //   //   child: CommMenu(),
                      //   // )
                      // ]))
                    ],
                  ),
                );
              },
            ),
          )
        : widget.data == "accProduct"
            ? Scaffold(
                body: Consumer<CommonProvider>(
                  builder: (context, provider, child) {
                    return SingleChildScrollView(
                      child: DefaultTabController(
                        length: 1,
                        child: Column(
                          children: [
                            //////////////////////////////////////////////////////////////////
                            Stack(children: [
                              SizedBox(
                                height: size.width * 0.7,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: provider
                                        .getProducts(widget.data)![
                                            provider.categoryIndex]
                                            [provider.productIndex]
                                            [provider.subProductIndex]['photo1']
                                        .length,
                                    controller: _controller,
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
                                                    Radius.circular(15)),
                                          ),
                                          child: Image.network(
                                            "http://192.168.1.83:8000/asset/" +
                                                provider.getProducts(
                                                                widget.data)![
                                                            provider
                                                                .categoryIndex][
                                                        provider
                                                            .productIndex][provider
                                                        .subProductIndex]
                                                    ['photo1'][index],
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
                                    count: provider
                                        .getProducts(widget.data)![
                                            provider.categoryIndex]
                                            [provider.productIndex]
                                            [provider.subProductIndex]['photo1']
                                        .length,
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

                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "http://192.168.1.83:8000/asset/" +
                                                      provider.getProducts(
                                                                  widget.data)![
                                                              provider
                                                                  .categoryIndex]
                                                          [provider
                                                              .productIndex][provider
                                                          .subProductIndex]['photo'],
                                                ),
                                                fit: BoxFit.cover)),
                                        width: size.width * 0.23,
                                        height: size.width * 0.23,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 12),
                                        child: Text(
                                          provider.getProducts(widget.data)![
                                                          provider
                                                              .categoryIndex]
                                                      [provider.productIndex]
                                                  [provider.subProductIndex]
                                              ['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: HexColor('#E8EFFF')),
                                    width: size.width,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: Colors.white),
                                                width: size.width * 0.1,
                                                height: size.width * 0.1,
                                                child: Icon(
                                                  Icons.phone_outlined,
                                                  color: Colors.blue.shade500,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  provider.getProducts(widget
                                                                      .data)![
                                                                  provider
                                                                      .categoryIndex]
                                                              [
                                                              provider
                                                                  .productIndex]
                                                          [
                                                          provider
                                                              .subProductIndex]
                                                      ['Phonenumber'],
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.copy,
                                                    color: Colors.blue,
                                                  ),
                                                ],
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    4,
                                                  ),
                                                  color: Colors.white,
                                                ),
                                                width: size.width * 0.1,
                                                height: size.width * 0.1,
                                                child: Icon(
                                                  Icons.mail_outline_rounded,
                                                  color: Colors.blue.shade500,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  provider.getProducts(
                                                              widget.data)![
                                                          provider
                                                              .categoryIndex][
                                                      provider
                                                          .productIndex][provider
                                                      .subProductIndex]['Email'],
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.copy,
                                                    color: Colors.blue,
                                                  ),
                                                ],
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    4,
                                                  ),
                                                  color: Colors.white,
                                                ),
                                                width: size.width * 0.1,
                                                height: size.width * 0.1,
                                                child: Icon(
                                                  Icons.facebook,
                                                  color: Colors.blue.shade500,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    provider.getProducts(
                                                                widget.data)![
                                                            provider
                                                                .categoryIndex][
                                                        provider
                                                            .productIndex][provider
                                                        .subProductIndex]['Facebook'],
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            provider.getProducts(widget.data)![
                                                            provider
                                                                .categoryIndex]
                                                        [provider.productIndex]
                                                    [provider.subProductIndex]
                                                ['description'],
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(children: [
                              SizedBox(
                                height: size.width * 0.9,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: provider
                                        .getProducts(widget.data)![
                                            provider.categoryIndex]
                                            [provider.productIndex]
                                            [provider.subProductIndex]['Image']
                                        .length,
                                    controller: _controller_,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 20),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            // color: color[index],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Image.network(
                                            "http://192.168.1.83:8000/asset/" +
                                                provider.getProducts(
                                                                widget.data)![
                                                            provider
                                                                .categoryIndex][
                                                        provider
                                                            .productIndex][provider
                                                        .subProductIndex]
                                                    ['Image'][index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: size.width * 0.82,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SmoothPageIndicator(
                                    controller: _controller_,
                                    count: provider
                                        .getProducts(widget.data)![
                                            provider.categoryIndex]
                                            [provider.productIndex]
                                            [provider.subProductIndex]['Image']
                                        .length,
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
                            //       Stack(
                            //   children: [
                            //     Stack(
                            //       children: [
                            //         SizedBox(
                            //           child:
                            //           Container(
                            //             width: size.width,
                            //             height: size.width,
                            //             child: GridView.builder(
                            //               physics: NeverScrollableScrollPhysics(),
                            //               itemCount: provider
                            //                     .getProducts(widget.data)![
                            //           provider.categoryIndex][provider.productIndex][provider.subProductIndex]['Image']
                            //       .length,
                            //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
                            //               itemBuilder: (context, index) {
                            //                 return Container(
                            //                   decoration: BoxDecoration(
                            //                     borderRadius: BorderRadius.circular(8),
                            //                     image: DecorationImage(image: NetworkImage(
                            //                       "http://192.168.1.83:8000/asset/" +
                            //                            provider.getProducts(
                            //                       widget.data)![
                            //                   provider.categoryIndex][provider.productIndex][provider.subProductIndex]['Image'][index],
                            //                     ), fit: BoxFit.cover)
                            //                   ),
                            //                 );
                            //               }
                            //             )
                            //           ),
                            //         )
                            //       ],
                            //     )
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            : widget.data == "culturalProduct"
                ? Scaffold(
                    body: Consumer<CommonProvider>(
                      builder: (context, provider, child) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                width: size.width,
                                height: size.height * 0.3,
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit.expand,
                                  children: [
                                    Image.network(
                                      "http://192.168.1.83:8000/asset/" +
                                          provider.getProducts(widget.data)![
                                                  provider.categoryIndex]
                                              [provider.productIndex]['photo'],
                                      fit: BoxFit.cover,
                                    ),
                                    SafeArea(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: IconButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            size: 30,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                          ),
                                          iconSize: 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          provider.getProducts(widget.data)![
                                                  provider.categoryIndex]
                                              [provider.productIndex]['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 3),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Ulaanbaatar, Mongolia',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SingleChildScrollView(
                                      child: Container(
                                        child: ReadMoreText(
                                          provider.getProducts(widget.data)![
                                                      provider.categoryIndex]
                                                  [provider.productIndex]
                                              ['description'],
                                          trimLines: 4,
                                          textAlign: TextAlign.justify,
                                          trimMode: TrimMode.Line,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: provider
                                        .getProducts(widget.data)![
                                            provider.categoryIndex]
                                            [provider.productIndex]['images']
                                        .length,
                                    physics: BouncingScrollPhysics(),
                                    controller: PageController(
                                      initialPage: 0,
                                      viewportFraction: 0.9,
                                    ),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(8),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: FullScreenWidget(
                                          disposeLevel: DisposeLevel.Medium,
                                          child: Center(
                                            child: Hero(
                                              tag: "smallImage",
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.network(
                                                  "http://192.168.1.83:8000/asset/" +
                                                      provider.getProducts(widget
                                                                      .data)![
                                                                  provider
                                                                      .categoryIndex]
                                                              [provider
                                                                  .productIndex]
                                                          ['images'][index],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
  }
}
