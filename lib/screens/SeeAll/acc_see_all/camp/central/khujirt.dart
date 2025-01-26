import 'package:flutter/material.dart';

class KhujirtCamp extends StatefulWidget {
  const KhujirtCamp({super.key});

  @override
  State<KhujirtCamp> createState() => _KhujirtCampState();
}

class _KhujirtCampState extends State<KhujirtCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Khujirt',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
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
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: NetworkImage(
                    'http://192.168.1.83:8000/asset/Accommodition/10.Khujirt/1.Khan Khujirt/Thumbnail/KhanKhujirtThumb (1 of 1).jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width,
              height: size.width * 0.5,
              child: const Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Khan khujirt',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: NetworkImage(
                    'http://192.168.1.83:8000/asset/Accommodition/10.Khujirt/2.Gazarchin/Thumbnail/GazarchinThumb (1 of 1).jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width,
              height: size.width * 0.5,
              child: const Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Gazarchin',
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
