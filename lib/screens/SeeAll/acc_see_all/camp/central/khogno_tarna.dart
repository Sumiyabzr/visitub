import 'package:flutter/material.dart';

class KhognoTarnaCamp extends StatefulWidget {
  const KhognoTarnaCamp({super.key});

  @override
  State<KhognoTarnaCamp> createState() => _KhognoTarnaCampState();
}

class _KhognoTarnaCampState extends State<KhognoTarnaCamp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Khogno Tarna NP',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
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
              // BICHIGT KHAD ----------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/Accommodition/1.Khogno Tarna NP/1.Bichigt Khad/Thumbnail/BichigtKhadThumb (1 of 1).jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.5,
                child: const Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Bichigt Khad',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ),
              // BICHIGT KHAD END ----------------------------------------------------------------------------------------
              const SizedBox(height: 10),
              // MONGOL ALTAI ----------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'http://192.168.1.83:8000/asset/Accommodition/1.Khogno Tarna NP/2.Mongol Altai/Thumbnail/MongolAltaiThumb (1 of 1).jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.5,
                child: const Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Mongol Altai',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ),
              // MONGOL ALTAI END ----------------------------------------------------------------------------------------
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ZAGAL TOURIST CAMP -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/1.Khogno Tarna NP/3Zagal Tourist camp/Thumbnail/2ZagalThumb (1 of 1).jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Zagal Tourist Camp',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // ZAGAL TOURIST CAMP END -----------------------------------------------------------------------------------------------------
                  // MUNGUN MOD -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/1.Khogno Tarna NP/4.Mungun mod/Thumbnail/MungunModThumb (1 of 1).jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Mungun Mod',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // MUNGUN MOD END -----------------------------------------------------------------------------------------------------
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // EDEN -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/1.Khogno Tarna NP/5.Eden/Thumbnail/EdenThumb (1 of 1).jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Eden',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // EDEN END -----------------------------------------------------------------------------------------------------
                  // DELGER -----------------------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Accommodition/1.Khogno Tarna NP/6.Delger/Thumbnail/DelgerThumb (1 of 1).jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: size.width * 0.44,
                    height: size.width * 0.44,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Delger',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // DELGER END -----------------------------------------------------------------------------------------------------
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
