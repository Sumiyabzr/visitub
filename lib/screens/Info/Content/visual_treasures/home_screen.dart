import 'package:flutter/material.dart';

class VisualTreasures extends StatefulWidget {
  const VisualTreasures({super.key});

  @override
  State<VisualTreasures> createState() => _VisualTreasuresState();
}

class _VisualTreasuresState extends State<VisualTreasures> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Visual Treasures',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/ThumnbailApp/DestinationsV.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: size.width,
                height: size.width * 0.44,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Destinations',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/CulturalMoments.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.9,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Cultural Moments',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/FriendsofBNM.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Friends of BNM',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/SeasonsofMongolia.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Seasons of Mongolia',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Wildlife.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.9,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Wildlife and Nature',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
