import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitub/provider/common.dart';

class ResortWorldTerelj extends StatefulWidget {
  final String data;
  const ResortWorldTerelj(this.data, {super.key});

  @override
  State<ResortWorldTerelj> createState() => _ResortWorldTereljState();
}

class _ResortWorldTereljState extends State<ResortWorldTerelj> {
  PageController _controller_ = PageController();
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return widget.data == "accProduct"
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
                                    .getProducts(widget.data)![0][3][2]
                                        ['photo1']
                                    .length,
                                controller: _controller,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 0),
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
                                        "http://192.168.1.111:8000/asset/" +
                                            provider.getProducts(
                                                    widget.data)![0][3][2]
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
                                    .getProducts(widget.data)![0][3][2]
                                        ['photo1']
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
                                              "http://192.168.1.111:8000/asset/" +
                                                  provider.getProducts(
                                                          widget.data)![0][3][2]
                                                      ['photo'],
                                            ),
                                            fit: BoxFit.cover)),
                                    width: size.width * 0.23,
                                    height: size.width * 0.23,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      provider.getProducts(widget.data)![0][3]
                                          [2]['name'],
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
                                                    BorderRadius.circular(4),
                                                color: Colors.white),
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
                                              provider.getProducts(
                                                      widget.data)![0][3][2]
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
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              provider.getProducts(
                                                      widget.data)![0][3][2]
                                                  ['Email'],
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
                                                        widget.data)![0][3][2]
                                                    ['Facebook'],
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
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
                                        provider.getProducts(widget.data)![0][3]
                                            [2]['description'],
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
                                    .getProducts(widget.data)![0][3][2]['Image']
                                    .length,
                                controller: _controller_,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        // color: color[index],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.network(
                                        "http://192.168.1.111:8000/asset/" +
                                            provider.getProducts(
                                                    widget.data)![0][3][2]
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
                                    .getProducts(widget.data)![0][3][2]['Image']
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
                        //                       "http://192.168.1.111:8000/asset/" +
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
        : Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}
