import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/larosa.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/rosewood.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/wallstreet.dart';

class Traditional extends StatefulWidget {
  const Traditional({super.key});

  @override
  State<Traditional> createState() => _TraditionalState();
}

class _TraditionalState extends State<Traditional> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Rosewood(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Commercial-new/Food/1.Rosewood/Thumbnail/RoseWoodThumbnail-1.jpg'),
                        fit: BoxFit.cover,
                      )),
                  width: size.width,
                  height: size.height * 0.25,
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.0005)
                                ])),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Rosewood',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Tumen Center, SBD - 1 khoroo,\nTumen Center F2, Ulaanbaatar',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LaRosa(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Commercial-new/Food/2.La Rosa/Thumbnail/LaRosaThumbnail-1.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: size.width * 0.4,
                      height: size.height * 0.4,
                      child: Column(
                        children: [
                          Container(
                            width: size.width * 0.4,
                            height: size.height * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black87,
                                      Colors.black12.withOpacity(0.0005)
                                    ])),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('La Rosa',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      Expanded(
                                          child: Text(
                                              'Chinggis Khan Ave 17 Gurvan Gol Office Center, SBD - 1 khoroo, Ulaanbaatar 14240',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white)))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Wallstreet(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Commercial-new/Food/WallStreet/Thumbnail/WallstreetThumbnail-1.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: size.width * 0.45,
                          height: size.width * 0.44,
                          child: Column(
                            children: [
                              Container(
                                width: size.width * 0.45,
                                height: size.width * 0.44,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black87,
                                          Colors.black12.withOpacity(0.0005)
                                        ])),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Wallstreet',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Jamyan Gun Street, SBD - 1 khoroo',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Wallstreet(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://192.168.1.83:8000/asset/Commercial-new/Food/MongolianRestaurant/Thumbnail/MongolianRestaurantthumbnail-1.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: size.width * 0.45,
                          height: size.width * 0.44,
                          child: Column(
                            children: [
                              Container(
                                width: size.width * 0.45,
                                height: size.width * 0.44,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black87,
                                          Colors.black12.withOpacity(0.0005)
                                        ])),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Mongolian`s Restaurant',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Olympic Street, 4th floor,',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Rosewood(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Commercial-new/Food/3.Lira/Thumbnail/LiraThumbnail-1.jpg'),
                        fit: BoxFit.cover,
                      )),
                  width: size.width,
                  height: size.height * 0.25,
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.0005)
                                ])),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Lira',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Chinggis Khan Ave, SBD - 1 khoroo,\nUlaanbaatar 14241',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
