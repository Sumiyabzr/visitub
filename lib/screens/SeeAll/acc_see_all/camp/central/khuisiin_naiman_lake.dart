import 'package:flutter/material.dart';

class KhuisiinNaimanLakeCamp extends StatefulWidget {
  const KhuisiinNaimanLakeCamp({super.key});

  @override
  State<KhuisiinNaimanLakeCamp> createState() => _KhuisiinNaimanLakeCampState();
}

class _KhuisiinNaimanLakeCampState extends State<KhuisiinNaimanLakeCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Khuisiin Naiman Lake',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/Accommodition/5.Khuisiin Naiman Lake/Buurug/Thumb/BuuregThumb (1 of 1).jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
              width: size.width * 0.44,
              height: size.width * 0.44,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Buurug',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
