import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Food',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
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
              Container(
                width: size.width,
                height: size.width * 0.44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/ThumnbailApp/FoodMain.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                textAlign: TextAlign.justify,
                'Mongolian cuisine is deeply connected to the country’s nomadic lifestyle and its harsh, diverse landscapes. The diet is shaped by the availability of local resources, seasonal changes, and the traditional practices of herding the "five snouts" or five livestock: horses, sheep, goats, camels, and cattle. Mongolian food is simple yet hearty, designed to nourish and sustain families and communities through long, cold winters, hot summers, and life on the move. The staples of the Mongolian diet come primarily from meat and dairy products, but the diet is complemented by wild plants, fruits, and nuts that grow in Mongolia’s vast steppes and mountains. Traditionally, Mongolians have divided their foods into five categories:',
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Red.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Ulaan Idee',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Black.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Khar Idee',
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
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Yellow.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Shar Idee',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/White.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Tsagaan Idee',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://192.168.1.83:8000/asset/ThumnbailApp/Green.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nogoon Idee',
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
