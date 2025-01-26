import 'package:flutter/material.dart';

class KharkhorinCamp extends StatefulWidget {
  const KharkhorinCamp({super.key});

  @override
  State<KharkhorinCamp> createState() => _KharkhorinCampState();
}

class _KharkhorinCampState extends State<KharkhorinCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Kharkhorin',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ASA LAND RESORT -----------------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/2.Kharkhorin/1.Asa Land Resort/Thumbnail/AsaLandThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Asa Land Resort',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // ASA LAND RESORT END -----------------------------------------------------------------------------------------------------
                // URGOO TOURIST CAMP -----------------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/2.Kharkhorin/2.Urgoo tourist camp/Thumbnail/UrgooThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Urgoo Tourist Camp',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // URGOO TOURIST CAMP END -----------------------------------------------------------------------------------------------------
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // KHORGO ARVIJIH -----------------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/2.Kharkhorin/3.Khorgo arivjih/Thumbnail/KhorgoArivjihThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Khorgo Arvijih',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // KHORGO ARVIJIH END -----------------------------------------------------------------------------------------------------
                // ORKHON LODGE -----------------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/2.Kharkhorin/4.Orkhon Lodge/Thumbnail/OrkhonLodgeThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Orkhon Lodge',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // ORKHON LODGE END -----------------------------------------------------------------------------------------------------
              ],
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/Accommodition/2.Kharkhorin/5.Nomadic Family Guesthouse/Thumbnail/NomadicFamilyThumb (1 of 1).jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
              width: size.width * 0.44,
              height: size.width * 0.44,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Nomadic Family',
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
