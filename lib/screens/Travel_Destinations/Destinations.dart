import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitub/components/UbCard.dart';
import 'package:visitub/provider/common.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Andlaliin_Urguu.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Baldan_Bereeven_Monastery.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Binder_Soum.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Buir_Lake.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Chinggis_City.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Choibalsan_City.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Dadal_Soum.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Ikh_Burkhant_Complex.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Khalkh_Gol.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Menen_Steppe.dart';
import 'package:visitub/screens/Details/DesDetail/Eastern/Uglugchiin_Kherem.dart';
import 'package:visitub/screens/Details/DesDetail/Nearby/Aglag_Buteel_Monastery.dart';
import 'package:visitub/screens/Details/DesDetail/Nearby/Chinggis_Khaanii_Khuree.dart';
import 'package:visitub/screens/Details/DesDetail/Nearby/Genghis_Khan_Statue_Complex.dart';
import 'package:visitub/screens/Details/DesDetail/Nearby/Khustai_Nuruu_NP.dart';
import 'package:visitub/screens/Details/DesDetail/Nearby/Terelj_NP.dart';
import 'package:visitub/screens/Details/DesDetail/Northern/Amarbaysgalant_Monastery.dart';
import 'package:visitub/screens/Details/DesDetail/Northern/Erdenet_City.dart';
import 'package:visitub/screens/Details/DesDetail/Northern/Khuvsgul_Lake.dart';
import 'package:visitub/screens/Details/DesDetail/Northern/Taiga.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Baga_Gazariin_Chuluu.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Bulgan.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Dalanzadgad.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Dungenee_Am.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Flaming_Cliffs.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Ikh_Gazariin_Chuluu.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Khamriin_Khiid.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Khanan_Khets.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Khermen_Tsaw.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Khongor_Sand_Dunes.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Khusliin_Uul.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Moltsog_Sand_Dunes.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Mukhar_Shivert_Am.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Ongi_Monastery.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Tsagaan_Suvraga.dart';
import 'package:visitub/screens/Details/DesDetail/Southern/Yolyn_Am.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Altai_Tavan_Bogd.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Baga_Turgen%E2%80%99s_Waterfall.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Khovd_City.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Mukhart_River.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Otgontenger.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Senjit.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Ulaagchnii_Khar_Lake.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Ulgii_City.dart';
import 'package:visitub/screens/Details/DesDetail/Western/Uliastai.dart';
import 'package:visitub/screens/Details/DesDetail/central/Chuluut_Valley.dart';
import 'package:visitub/screens/Details/DesDetail/central/Khorgo_Terkhiin_Tsagaan_Nuur_NP.dart';
import 'package:visitub/screens/Details/DesDetail/central/Khuisiin_Naiman_Lake.dart';
import 'package:visitub/screens/Details/DesDetail/central/Khujirt.dart';
import 'package:visitub/screens/Details/DesDetail/central/Orkhon_Valley.dart';
import 'package:visitub/screens/Details/DesDetail/central/Taikhar_Rock.dart';
import 'package:visitub/screens/Details/DesDetail/central/Tsenkher_Hot_Springs.dart';
import 'package:visitub/screens/Details/DesDetail/central/Tsetserleg_City.dart';
import 'package:visitub/screens/Details/DesDetail/central/Tuvkhun_Monastery.dart';
import 'package:visitub/screens/Details/DesDetail/central/erdenezuu.dart';
import 'package:visitub/screens/Details/DesDetail/central/khogno.dart';
import 'package:visitub/screens/Details/DesDetail/central/ugiilake.dart';
import 'package:visitub/screens/SeeAll/dest_see_all/central.dart';
import 'package:visitub/screens/SeeAll/dest_see_all/eastern.dart';
import 'package:visitub/screens/SeeAll/dest_see_all/nearby.dart';
import 'package:visitub/screens/SeeAll/dest_see_all/northern.dart';
import 'package:visitub/screens/SeeAll/dest_see_all/southern.dart';
import 'package:visitub/screens/SeeAll/dest_see_all/western.dart';

class Destinations extends StatefulWidget {
  const Destinations({super.key});

  @override
  State<Destinations> createState() => _DestinationsState();
}

class _DestinationsState extends State<Destinations> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ub card
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text(
                    "Ulaanbaatar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                        children: List.generate(4, (index) => UbCard(index))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nearby',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                GestureDetector(
                                    onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                NearbySeeAll(),
                                          ),
                                        ),
                                    child: Text('See all'))
                              ],
                            ),
                          ),
                          // NEARBY --------------------------
                          Container(
                            height: size.width * 0.4,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Terelj_NP(),
                                        )),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Terelj.jpg'),
                                              fit: BoxFit.cover)),
                                      width: size.width * 0.4,
                                      child: const Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Terelj NP',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Genghis_Khan_Statue_Complex(),
                                        )),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  'http://192.168.1.83:8000/asset/zadgai/Thumbnails/GenghisKhanStatueComplex.jpg'),
                                              fit: BoxFit.cover)),
                                      width: size.width * 0.4,
                                      child: const Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Genghis Khan Statue Complex',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Khustai_Nuruu_NP(),
                                        )),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhustaiNp.jpg'),
                                              fit: BoxFit.cover)),
                                      width: size.width * 0.4,
                                      child: const Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Khustai Nuruu NP',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Aglag_Buteel_Monastery(),
                                      )),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/zadgai/Thumbnails/AglagMonastery.jpg'),
                                            fit: BoxFit.cover)),
                                    width: size.width * 0.4,
                                    child: const Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Aglag Buteel Monastery',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Chinggis_Khaanii_Khuree(),
                                      )),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                'http://192.168.1.83:8000/asset/zadgai/Thumbnails/ChinggisKhaaniiKhuree.jpg'),
                                            fit: BoxFit.cover)),
                                    width: size.width * 0.4,
                                    child: const Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Chinggis Khaanii Khuree',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                          ),
                          // NEARBY END ---------------------------------------------------
                        ],
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Central',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CentralSeeAll(),
                                    )),
                                child: Text('See all'))
                          ],
                        ),
                      ),
                      // CENTRAL --------------------------
                      // hogno tarna----
                      Container(
                        height: size.width * 0.4,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => KhognoTarna(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhognoTarnaNP.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Khogno-Tarna-NP',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ErdeneZuu(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Kharkhorin.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Kharkhorin',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Ugiilake(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/UgiiLake.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Ugii Lake',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Orkhon_Valley(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/OrkhonValley.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Orkhon Valley',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Khuisiin_Naiman_Lake(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhuisiinNaimanLake.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khuisiin Naiman Lake',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Tuvkhun_Monastery(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/TuvkhunMonastery.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Tuvkhun Monastery',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Tsenkher_Hot_Springs(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/TsenkherHotSprings.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Tsenkher Hot Springs',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Tsetserleg_City(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Tsetserleg.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Tsetserleg City',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Taikhar_Rock(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Taikhar.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Taikhar Rock',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Chuluut_Valley(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/ChuluutCanyon.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Chuluut Valley',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Khorgo_Terkhiin_Tsagaan_Nuur_NP(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/TerkhiinTsagaanLake.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khorgo-Terkhiin Tsagaan Nuur NP',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khujirt(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Khujirt.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khujirt',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ],
                        ),
                      ),
                      // CENTRAL END ---------------------------------------------------
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Southern',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SouthernSeeAll(),
                                    )),
                                child: Text('See all'))
                          ],
                        ),
                      ),
                      // SOUTHERN --------------------------
                      Container(
                        height: size.width * 0.4,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Baga_Gazariin_Chuluu(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/BagagazariinChuluu.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Baga Gazariin Chuluu',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Ikh_Gazariin_Chuluu(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Ikhgazariinchuluu.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Ikh Gazariin Chuluu',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Tsagaan_Suvraga(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/TsagaanSuvraga.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Tsagaan Suvraga',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dalanzadgad(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Khujirt.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Dalanzadgad',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mukhar_Shivert_Am(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/MukharShivertiinAm.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mukhar Shivert Am',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Yolyn_Am(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Yolyn Am.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Yolyn Am',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dungenee_Am(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/DungeneeAm.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Dungenee Am',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khongor_Sand_Dunes(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhongorynEls.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khongor Sand Dunes',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Flaming_Cliffs(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/FlamingCliffs.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Flaming Cliffs',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Bulgan(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Bulgan.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Bulgan',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Moltsog_Sand_Dunes(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/MoltsogEls.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Moltsog Sand Dunes',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Ongi_Monastery(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/OngiMonastery.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Ongi Monastery',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khanan_Khets(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhananKhets.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khanan Khets',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khermen_Tsaw(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Khujirt.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khermen Tsaw',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khamriin_Khiid(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhamriinKhiid.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khamriin Khiid',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khusliin_Uul(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhusliinUul.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khusliin Uul',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ],
                        ),
                      ),
                      // SOUTHERN END ---------------------------------------------------
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Western',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WesternSeeAll(),
                                    )),
                                child: Text('See all'))
                          ],
                        ),
                      ),
                      // WESTERN --------------------------
                      Container(
                        height: size.width * 0.4,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Ulaagchnii_Khar_Lake(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/UlaagchniiKharLake.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Ulaagchnii Khar Lake',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Senjit(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/SenjitKhad.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Senjit Khad',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mukhart_River(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/MukhartsRiver.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mukhart River',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Ulgii_City(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/UlgiiCity.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Ulgii City',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Altai_Tavan_Bogd(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/AltaiTavanBogd.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Altai Tavan Bogd',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Baga_Turgens_Waterfall(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/BagaTurgensWaterfall.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Baga Turgen’s Waterfall',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khovd_City(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Khovd.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khovd	City',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Otgontenger(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Otgontenger.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Otgontenger',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Uliastai(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Uliastai.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Uliastai',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ],
                        ),
                      ),
                      // WESTERN END ---------------------------------------------------
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Eastern',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EasternSeeAll(),
                                    )),
                                child: Text('See all'))
                          ],
                        ),
                      ),
                      // EASTERN --------------------------
                      Container(
                        height: size.width * 0.4,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Baldan_Bereeven_Monastery(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Baldanbereevenmonastery.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Baldan Bereeven Monastery',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Chinggis_City(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/ChinggisCity.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Chinggis City',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Andlaliin_Urguu(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'http://192.168.1.83:8000/asset/zadgai/Thumbnails/AndlaliinUrguu.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.4,
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Andlaliin Urguu',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Uglugchiin_Kherem(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/UglugchiinKherem.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Uglugchiin Kherem',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Binder_Soum(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Binder.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Binder Soum',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dadal_Soum(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Dadal.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Dadal',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Choibalsan_City(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Choibalsan.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Choibalsan City',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Menen_Steppe(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/MenenSteppe.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Menen Steppe',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Buir_Lake(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/BuirLake.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Buir Lake',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Khalkh_Gol(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/KhalkhGol.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Khalkh Gol',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Ikh_Burkhant_Complex(),
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'http://192.168.1.83:8000/asset/zadgai/Thumbnails/IkhBurkhant.jpg'),
                                        fit: BoxFit.cover)),
                                width: size.width * 0.4,
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Ikh Burkhant Complex',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ],
                        ),
                      ),
                      // EASTERN END ---------------------------------------------------

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       'Northern',
                      //     ),
                      //     GestureDetector(
                      //         onTap: () => Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => NorthernSeeAll(),
                      //             )),
                      //         child: Text('See all'))
                      //   ],
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Northern',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NorthernSeeAll(),
                              )),
                          child: Text('See all'))
                    ],
                  ),
                ),
                // Northern begin

                Container(
                  height: size.width * 0.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Khuvsgul_Lake(),
                              )),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Khuvsgul.jpg'),
                                    fit: BoxFit.cover)),
                            width: size.width * 0.4,
                            child: const Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Khuvsgul Lake',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Taiga(),
                              )),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Taiga.jpg'),
                                    fit: BoxFit.cover)),
                            width: size.width * 0.4,
                            child: const Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Taiga',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Erdenet_City(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Erdenet.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Erdenet City',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Amarbaysgalant_Monastery(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/zadgai/Thumbnails/Amarbaysgalant.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Amarbaysgalant Monastery	',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                )

                // Column(
                //   children: List.generate(
                //       6,
                //       (index) => Column(
                //             children: [
                //               Padding(
                //                 padding: EdgeInsets.symmetric(
                //                     vertical: 15, horizontal: 15),
                //                 child: Row(
                //                   mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     Text(
                //                       provider.categories[index]['name'],
                //                       style: TextStyle(
                //                           fontSize: 20,
                //                           fontWeight: FontWeight.w700),
                //                     ),
                //                     InkWell(
                //                       onTap: () {
                //                         provider.setCategoryIndex(index);
                //                         Navigator.of(context).push(
                //                             MaterialPageRoute(
                //                                 builder: (context) =>
                //                                     SeeAll(0)));
                //                       },
                //                       child: Text(
                //                         'See all',
                //                         style: TextStyle(
                //                             color: Colors.blue,
                //                             fontSize: 15,
                //                             fontWeight: FontWeight.w500),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //               Align(
                //                 alignment: Alignment.centerLeft,
                //                 child: SingleChildScrollView(
                //                     physics: BouncingScrollPhysics(),
                //                     scrollDirection: Axis.horizontal,
                //                     child: Padding(
                //                       padding: const EdgeInsets.symmetric(
                //                           horizontal: 15),
                //                       child: Wrap(
                //                           alignment: WrapAlignment.start,
                //                           crossAxisAlignment:
                //                               WrapCrossAlignment.start,
                //                           spacing: 15,
                //                           children: List.generate(
                //                             provider.products[index].length,
                //                             (index1) => MiniCard('/desDetail',
                //                                 "desProduct", index, index1),
                //                           )),
                //                     )),
                //               ),
                //             ],
                //           )),
                // )
              ],
            ),
          ),
        );
      },
    );
  }
}
