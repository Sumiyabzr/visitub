import 'package:flutter/material.dart';

class UgiiLakeCamp extends StatefulWidget {
  const UgiiLakeCamp({super.key});

  @override
  State<UgiiLakeCamp> createState() => _UgiiLakeCampState();
}

class _UgiiLakeCampState extends State<UgiiLakeCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Ugii Lake',
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
            // Ugii Nuur Tourist Camp ----------------------------------------------------------------------------------------
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: NetworkImage(
                    'http://192.168.1.83:8000/asset/Accommodition/3.Ugii Lake/1. Ugii nuur tourist camp/Thumbnail/UgiiNuurToursitCampThumb (1 of 1).jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width,
              height: size.width * 0.5,
              child: const Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Ugii Nuur Tourist Camp',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ),
            // Ugii Nuur Tourist Camp END ----------------------------------------------------------------------------------------
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Natsagaa`s Guest House --------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/3.Ugii Lake/Natsagaa_s guest house/Thumbnail/Natsagaa_sGuestHouseThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Natsagaa`s Guest House',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // Natsagaa`s Guest House END --------------------------------------------------------------------------------------------
                // OTGOO`s Guest House --------------------------------------------------------------------------------------------
                Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://192.168.1.83:8000/asset/Accommodition/3.Ugii Lake/Otgoo_s guest house/Thumbnail/Otgoo_sGuestHouseThumb (1 of 1).jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.44,
                  height: size.width * 0.44,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Otgoo`s Guest House',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                // OTGOO`s Guest House END --------------------------------------------------------------------------------------------
              ],
            ),
            SizedBox(height: 10),
            // TSIRKA`s Guest House --------------------------------------------------------------------------------------------
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/Accommodition/3.Ugii Lake/Tsirka_s guest house/Thumbnail/Tsirka_sGuestHouseThumb (1 of 1).jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
              width: size.width * 0.44,
              height: size.width * 0.44,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Tsirka`s Guest House',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ),
            // TSIRKA`s Guest House END --------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}
