import 'package:flutter/material.dart';

class NearbySeeAll extends StatefulWidget {
  const NearbySeeAll({super.key});

  @override
  State<NearbySeeAll> createState() => _NearbySeeAllState();
}

class _NearbySeeAllState extends State<NearbySeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Nearby',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    // ITEM 1 -------------------------------------------------------------------------------------------------
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/Dest/Nearby-1.jpg'),
                              fit: BoxFit.cover)),
                      width: size.width,
                      height: size.width * 0.44,
                    ),
                    // ITEM 1 END --------------------------------------------------------------------------------------------
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            // ITEM 2 -------------------------------------------------------------------------------------------------
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://192.168.1.83:8000/asset/Dest/Nearby-2.jpg'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.44,
                              height: size.height * 0.4,
                            ),
                            // ITEM 2 END --------------------------------------------------------------------------------------------
                            SizedBox(height: 10),
                            // ITEM 4 --------------------------------------------------------------------------------------------
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://192.168.1.83:8000/asset/Dest/Nearby-4.jpg'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.44,
                              height: size.height * 0.2,
                            )
                            // ITEM 4 END --------------------------------------------------------------------------------------------
                          ],
                        ),
                        Column(
                          children: [
                            // ITEM 3 -------------------------------------------------------------------------------------------------
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://192.168.1.83:8000/asset/Dest/Nearby-3.jpg'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.44,
                              height: size.height * 0.2,
                            ),
                            // ITEM 3 END --------------------------------------------------------------------------------------------
                            SizedBox(height: 10),
                            // ITEM 5 --------------------------------------------------------------------------------------------
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://192.168.1.83:8000/asset/Dest/Nearby-5.jpg'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.44,
                              height: size.height * 0.4,
                            )
                            // ITEM 5 END --------------------------------------------------------------------------------------------
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
            // Column(
            //   children: [
            //     // ITEM 1 -------------------------------------------------------------------------------------------------
            //     Container(
            //       decoration: BoxDecoration(
            //
            //         borderRadius: BorderRadius.circular(15),
            //       ),
            //       width: size.width,
            //       height: size.width * 0.5,
            //     ),
            //     // ITEM 1 END --------------------------------------------------------------------------------------------
            //     SizedBox(height: 10),
            //     // ITEM 2 -----------------------------------------------------------------------------------------------
            //     Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //
            //             borderRadius: BorderRadius.circular(15),
            //           ),
            //           width: size.width * 0.44,
            //           height: size.height * 0.4,
            //         ),
            //         // ITEM 2 END -------------------------------------------------------------------------------------------
            //         // ITEM 3 ----------------------------------------------------------------------------------------------------
            //         Container(
            //           decoration: BoxDecoration(
            //
            //             borderRadius: BorderRadius.circular(15),
            //           ),
            //           width: size.width * 0.44,
            //           height: size.height * 0.2,
            //         )
            //         // ITEM 3 END -------------------------------------------------------------------------------------------
            //       ],
            //     ),
            //     SizedBox(height: 10),

            //   ],
            // ),
            ),
      ),
    );
  }
}
