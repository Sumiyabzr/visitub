import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/detail/hotel/premium/premium.dart';
import 'package:visitub/screens/Commercial/detail/hotel/premium/puma.dart';

class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Puma(),)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage('http://192.168.1.111:8000/asset/Commercial-new/Hotel/puma/Thumbnail/PumaThumbnail-1.jpg'),
                  fit: BoxFit.cover,
                  )
                ),
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
                          ]
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Puma', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),),
                                Icon(Icons.check_circle, color: Colors.green,)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, color: Colors.white,),
                                Expanded(child: Text('SBD - 8 khoroo, Ulaanbaatar 14200',style: TextStyle(fontSize: 12, color: Colors.white))),
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
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PremiumHotel(),)),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('http://192.168.1.111:8000/asset/Commercial-new/Hotel/Premium/Thumbnail/PremiumThumbnail-1.jpg'),
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
                              end: Alignment.center,
                              colors: [
                                Colors.black87,
                                Colors.black12.withOpacity(0.0005)
                              ]
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Premium', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on_outlined, color: Colors.white,),
                                    Expanded(child: Text('Ikh Toiruu Street, Chingeltei District-5, Ulaanbaatar 15150', style: TextStyle(fontSize: 12, color: Colors.white)))
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}