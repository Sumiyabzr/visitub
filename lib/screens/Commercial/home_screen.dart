import 'package:flutter/material.dart';
import 'package:visitub/screens/Commercial/detail/activities/premium/hun_theatre.dart';
import 'package:visitub/screens/Commercial/detail/activities/premium/mt_bogd_golf.dart';
import 'package:visitub/screens/Commercial/detail/activities/premium/tume_eh.dart';
import 'package:visitub/screens/Commercial/detail/activities/sauna_spa_encanto.dart';
import 'package:visitub/screens/Commercial/detail/activities/premium/sky_resort.dart';
import 'package:visitub/screens/Commercial/detail/fashion/amara.dart';
import 'package:visitub/screens/Commercial/detail/fashion/premium/bodios.dart';
import 'package:visitub/screens/Commercial/detail/fashion/premium/dandy.dart';
import 'package:visitub/screens/Commercial/detail/fashion/premium/evseg.dart';
import 'package:visitub/screens/Commercial/detail/fashion/premium/gobi.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/lira.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/larosa.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/mnrest.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/rosewood.dart';
import 'package:visitub/screens/Commercial/detail/food/premium/wallstreet.dart';
import 'package:visitub/screens/Commercial/detail/guesthouse/khongor_guesthouse.dart';
import 'package:visitub/screens/Commercial/detail/guesthouse/lg_guesthouse.dart';
import 'package:visitub/screens/Commercial/detail/guesthouse/ub_guesthouse.dart';
import 'package:visitub/screens/Commercial/detail/guesthouse/ulaanbaatar_hostel.dart';
import 'package:visitub/screens/Commercial/detail/hospital/intermed.dart';
import 'package:visitub/screens/Commercial/detail/hospital/songdo.dart';
import 'package:visitub/screens/Commercial/detail/hotel/premium/novotel.dart';
import 'package:visitub/screens/Commercial/detail/hotel/premium/premium.dart';
import 'package:visitub/screens/Commercial/detail/hotel/premium/puma.dart';
import 'package:visitub/screens/Commercial/detail/hotel/premium/tuushin.dart';
import 'package:visitub/screens/Commercial/detail/nightlife/premium/eon.dart';
import 'package:visitub/screens/Commercial/detail/nightlife/exotic.dart';
import 'package:visitub/screens/Commercial/detail/nightlife/premier_lounge.dart';
import 'package:visitub/screens/Commercial/detail/nightlife/premium/choco.dart';
import 'package:visitub/screens/Commercial/detail/nightlife/premium/mint.dart';
import 'package:visitub/screens/Commercial/detail/nightlife/premium/zu_club.dart';
import 'package:visitub/screens/Commercial/detail/shopping/altai_tawan_bogd.dart';
import 'package:visitub/screens/Commercial/detail/shopping/ayanchin.dart';
import 'package:visitub/screens/Commercial/detail/shopping/cu.dart';
import 'package:visitub/screens/Commercial/detail/shopping/premium/admin.dart';
import 'package:visitub/screens/Commercial/detail/shopping/premium/camera_rental_mongolia.dart';
import 'package:visitub/screens/Commercial/detail/shopping/premium/my_tech.dart';
import 'package:visitub/screens/Commercial/detail/shopping/premium/odkhuu.dart';
import 'package:visitub/screens/Commercial/detail/shopping/premium/robo_eagle.dart';
import 'package:visitub/screens/Commercial/detail/wellness/ariya_spa.dart';
import 'package:visitub/screens/Commercial/detail/wellness/premium/joy_foot.dart';
import 'package:visitub/screens/Commercial/detail/wellness/lotus_thai.dart';
import 'package:visitub/screens/Commercial/detail/wellness/premium/derma.dart';
import 'package:visitub/screens/Commercial/detail/wellness/premium/soyol.dart';
import 'package:visitub/screens/Commercial/see_all/SeeAllComm.dart';
import 'package:visitub/screens/Commercial/see_all/seeallactivities.dart';
import 'package:visitub/screens/Commercial/see_all/seeallfashion.dart';
import 'package:visitub/screens/Commercial/see_all/seeallfood.dart';
import 'package:visitub/screens/Commercial/see_all/seeallguesthouse.dart';
import 'package:visitub/screens/Commercial/see_all/seeallhospital.dart';
import 'package:visitub/screens/Commercial/see_all/seeallnightlife.dart';
import 'package:visitub/screens/Commercial/see_all/seeallshopping.dart';
import 'package:visitub/screens/Commercial/see_all/seeallwellness.dart';

class Commercial_screen extends StatefulWidget {
  const Commercial_screen({super.key});

  @override
  State<Commercial_screen> createState() => _Commercial_screenState();
}

class _Commercial_screenState extends State<Commercial_screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Commercial',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 28,
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hotel',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SeeAllComm(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
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
                              builder: (context) => Puma(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Hotel/puma/Thumbnail/PumaThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Puma',
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
                              builder: (context) => Novotel(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Hotel/Novotel/Thumbnail/NovotelThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Novotel',
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
                              builder: (context) => Tuushin(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Hotel/Tuushin/Thumbnail/TuushinThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Tuushin',
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
                            builder: (context) => PremiumHotel(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Hotel/Premium/Thumbnail/PremiumThumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Premium',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(width: 10),
                    //  InkWell(
                    //     onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Shangrila(),)),
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(15),
                    //           image: const DecorationImage(image: NetworkImage(
                    //             'http://192.168.1.83:8000/asset/Commercial/Hotel/ShangriLa/ShangriLaE%20(1%20of%201).jpg'
                    //           ),
                    //            fit: BoxFit.cover)
                    //         ),
                    //         width: size.width * 0.4,
                    //         child: const Align(
                    //           alignment: Alignment.bottomLeft,
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(8.0),
                    //             child: Text('Shangri La',  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),),
                    //           )),
                    //       ),
                    //     ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Food',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SeeAllFood(),
                          )),
                      child: Text(
                        '',
                      ),
                    )
                  ],
                ),
              ),
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
                              builder: (context) => Rosewood(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Food/1.Rosewood/Thumbnail/RoseWoodThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Rosewood',
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
                              builder: (context) => LaRosa(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Food/2.La Rosa/Thumbnail/LaRosaThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'La Rosa',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
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
                              builder: (context) => Wallstreet(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Food/WallStreet/Thumbnail/WallstreetThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Wallstreet',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MnRest(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Food/MongolianRestaurant/Thumbnail/MongolianRestaurantthumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FatHen(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Food/3.Lira/Thumbnail/LiraThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Lira',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fashion',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Seeallfashion(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
              Container(
                height: size.width * 0.4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => GoBi())),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Fashion/2.Gobi/Thumbnail/GobiThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Gobi',
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
                              builder: (context) => Evseg(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Fashion/3.Evseg/Thumbnail/EvsegThumbnail-19.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Evseg',
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
                              builder: (context) => DandyAtelier(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Fashion/Dandy/Thumbnail/DandyThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Dandy Atelier',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bodios(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Fashion/Bodios Mongolia/Thumbnail/BodiosMongoliaThumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Bodios Mongolia',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Amara(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Fashion/Amara/Amara (12 of 1).jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Amara',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nightlife',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Seeallnightlife(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
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
                              builder: (context) => ZUClub(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/NightLife/1.ZU club/Thumbnail/ZUClubThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'ZU club',
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
                              builder: (context) => Choco(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/NightLife/2.Choco/Thumbnail/ChocoThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Choco',
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
                              builder: (context) => Mint(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/NightLife/3.Mint/Thumbnail/MintThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Mint',
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
                              builder: (context) => Eon(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/NightLife/4.Eon/Thumbnail/EonThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'EON',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PremierLounge(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial/Nightlife/PremiereLounge/PremiereP (7 of 7).jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Premier Lounge',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Exotic(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Nightlife/ExoticVipClub/ExoticVipClubE (1 of 1).jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Exotic Vip Club',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shopping',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Seeallshopping(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
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
                              builder: (context) => RoboEagle(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Shopping/1.Robo Eagle/Thumbnail/RoboeagleThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Robo Eagle',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
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
                              builder: (context) => Admin(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Shopping/2.Admin/Thumbnail/AdminThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Admin',
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
                              builder: (context) => CameraRentalMongolia(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Shopping/3.Camera Rental Mongolia/Thumbnail/CameraRentalMongoliaThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Camera Rental Mongolia',
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
                              builder: (context) => Odkhuu(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Shopping/4.Odkhuu/Thumbnail/OdkhuuThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Odkhuu',
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
                              builder: (context) => MyTech(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Shopping/5.My Tech/Thumbnail/MYTechThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'My Tech',
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
                              builder: (context) => AltaiTawanBogd(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Shopping/AltaiTavanBogd/AltaiTavanBogdP (3 of 13).jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Altai Tavan Bogd Outdoor & Equipment Store',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ayanchin(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial/Shopping/Ayanchin/AyanchinP (2 of 9).jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ayanchin Outfitters',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CU(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Shopping/Cu/CuP (1 of 6).jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'CU',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wellness',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Seeallwellness(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
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
                              builder: (context) => Soyol(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Wellness/1.Soyol/Thumbnail/SoyolThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Soyol',
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
                              builder: (context) => Derma(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Wellness/2.Derma/Thumbnail/DemaThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Derma',
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
                              builder: (context) => JoyFoot(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Wellness/3.Joy Foot Massage/Thumbnail/JoyFootMassageThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Joy Foot Reflexology',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LotusThai(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial/Wellness/LotusMassage/LotusE (2 of 3).jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lotus Thai Massage',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AriyaSpa(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Wellness/Ariya/333719220_3030508383923777_5459695188850888346_n.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Ariya Vip-Spa',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Activities',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Seeallactivities(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
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
                              builder: (context) => MtBogdGolf(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Activities/1..MTBogdGolfClub/Thumbnail/MTBogdGolfClubThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Mt.Bogd Golf & Country Club',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SkyResort(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Activities/1.Sky resort/Thumbnail/SkyResortThumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Sky Resort',
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
                            builder: (context) => HunTheatre(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Activities/2.Hun theatre/Thumbnail/HunTheatreThumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Hun Theatre',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TumeEh(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Activities/3.Tumen Ekh ensemble/Thumbnail/TumenEkhThumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Tumen Ekh Ensemble',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SaunaSpaEncanto(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial/Activities/Encanto/EncantoE (1 of 6).jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Sauna spa el Encanto',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Guesthouses ------------------------------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GuestHouses',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Seeallguesthouse(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
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
                              builder: (context) => UbGuesthouse(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Guesthouse/UB Guesthouse& tour/Thumbnail/UBGuestHouseThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'UB Guesthouse & tour',
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
                              builder: (context) => LgGuesthouse(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Guesthouse/LG GuestHouse/Thumbnail/LGGuestHouseThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'LG GuestHouse',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UlaanbaatarHostel(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Guesthouse/3.Ulaanbaatar Hostel/Thumbnail/UlaanbaatarHostelThumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ulaanbaatar Hostel',
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
                            builder: (context) => KhongorGuesthouse(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.1.83:8000/asset/Commercial-new/Guesthouse/4.Khongor Guesthouse/Thumbnail/KhongorGuesthouseThumbnail-1.jpg'),
                                fit: BoxFit.cover)),
                        width: size.width * 0.4,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Khongor Guesthouse',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hospitals',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Seeallhospital(),
                            )),
                        child: Text(''))
                  ],
                ),
              ),
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
                              builder: (context) => SongdoCommercial(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Hospital/Songdo/Thumbnail/Songdo Thumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Songdo',
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
                              builder: (context) => IntermedCommercial(),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://192.168.1.83:8000/asset/Commercial-new/Hospital/Intermed/Thumbnail/IntermedThumbnail-1.jpg'),
                                  fit: BoxFit.cover)),
                          width: size.width * 0.4,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Intermed',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
