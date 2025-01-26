import 'package:flutter/material.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/chuliit_valley.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/kharkhorin.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/khogno_tarna.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/khuisiin_naiman_lake.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/khujirt.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/taikhar_rock.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/tsenher_hot_spring.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/tuvkhun.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/ugii_lake.dart';
import 'package:visitub/screens/SeeAll/acc_see_all/camp/central/ulaan_tsutgalan.dart';

class AccCentralSeeAll extends StatefulWidget {
  const AccCentralSeeAll({super.key});

  @override
  State<AccCentralSeeAll> createState() => _AccCentralSeeAllState();
}

class _AccCentralSeeAllState extends State<AccCentralSeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Central',
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
              // ITEM 1 -------------------------------------------------------------------------------------------------
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KhognoTarnaCamp(),
                    )),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'http://192.168.1.83:8000/asset/Dest/Central-1.jpg'),
                          fit: BoxFit.cover)),
                  width: size.width,
                  height: size.width * 0.44,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Khogno Tarna NP',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              // ITEM 1 END --------------------------------------------------------------------------------------------
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ITEM 2 -------------------------------------------------------------------------------------------------
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const KharkhorinCamp(),
                        )),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/Dest/Central-2.jpg'),
                              fit: BoxFit.cover)),
                      width: size.width * 0.44,
                      height: size.width * 0.44,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'KharKhorin',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  // ITEM 2 END -------------------------------------------------------------------------------------------------
                  // ITEM 3 -------------------------------------------------------------------------------------------------
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UgiiLakeCamp(),
                        )),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.83:8000/asset/Dest/Central-3.jpg'),
                              fit: BoxFit.cover)),
                      width: size.width * 0.44,
                      height: size.width * 0.44,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Ugii Lake',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  // ITEM 3 END -------------------------------------------------------------------------------------------------
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // ITEM 4 -------------------------------------------------------------------------------------------------
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UlaanTsutgalanCamp(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Dest/Central-4.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.44,
                          height: size.width * 0.91,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Orkhon Valley',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // ITEM 4 END -------------------------------------------------------------------------------------------------
                      // ITEM 7 -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TsenherHotSpringCamp(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Dest/Central-7.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Tsenkher Hot Springs',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // ITEM 7 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 9 -------------------------------------------------------------------------------------------------
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TaikharRockCamp(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Dest/Central-9.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Taikhar Rock',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // ITEM 9 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 11 -------------------------------------------------------------------------------------------------
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KhujirtCamp(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Dest/Central-13.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Khujirt',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // ITEM 11 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 12 -------------------------------------------------------------------------------------------------

                      // ITEM 12 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                  Column(
                    children: [
                      // ITEM 5 -------------------------------------------------------------------------------------------------
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const KhuisiinNaimanLakeCamp(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Dest/Central-5.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Khuisiin Naiman Lake',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // ITEM 5 END -------------------------------------------------------------------------------------------------
                      // ITEM 6 -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TuvkhunCamp(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Dest/Central-6.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Tuvkhun Monastery',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // ITEM 6 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 8 -------------------------------------------------------------------------------------------------
                      Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Dest/Central-8.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Tsetserleg City',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      // ITEM 8 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 10 -------------------------------------------------------------------------------------------------
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChuluutValleyCamp(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Dest/Central-10.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.44,
                          height: size.width * 0.91,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Chuluut Valley',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // ITEM 10 END -------------------------------------------------------------------------------------------------
                      const SizedBox(height: 10),
                      // ITEM 13 -------------------------------------------------------------------------------------------------

                      // ITEM 13 END -------------------------------------------------------------------------------------------------
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Central-11.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Khorgo Extinct Volcano',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
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
