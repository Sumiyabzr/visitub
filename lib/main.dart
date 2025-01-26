import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:visitub/global_keys.dart';
import 'package:visitub/login/login.dart';
import 'package:visitub/navigation_bar.dart';
import 'package:visitub/provider/common.dart';
import 'package:visitub/screens/Commercial/navbar.dart';
import 'package:visitub/screens/Events/home_screen.dart';
import 'package:visitub/screens/Info/History/home_screen.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/cashmere.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/fur.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/gemstones.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/leather.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/wood.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/product/accessories.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/product/boots.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/product/headwear.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/court.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/horsedance.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/tsam.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Dance/product/wrestler.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/bishguur.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/boginoduu.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/khoomei.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/khuuchir.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/limbe.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/magtaal.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/shaman.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/tovshuur.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/epicstory.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/urtiinduu.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Music/product/yatga.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Painting/product/contemporary.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Painting/product/miniature.dart';
import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/Painting/product/murals.dart';
import 'package:visitub/screens/Info/home_screen.dart';
import 'package:visitub/screens/NewAccommodation/screen.dart';
import 'package:visitub/screens/Tours/home_screen.dart';
import 'package:visitub/screens/Travel_Destinations/City%20tour/day2.dart';
import 'package:visitub/screens/Travel_Destinations/City%20tour/day3.dart';
import 'package:visitub/screens/Travel_Destinations/navbar.dart';
import 'package:visitub/screens/Ulaanbaatar/home.dart';
import 'package:visitub/screens/coming_soon_pop_up.dart';
import 'package:visitub/screens/new_home_screen.dart';
import 'package:visitub/screens/onBoarding.dart';
import 'package:visitub/splash.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.leanBack
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CommonProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: GlobalKeys.navigatorKey,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        ),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        initialRoute: "/splash",
        routes: {
          '/NavBar': (context) => const NavBar(),
          '/splash': (context) => const Splash(),
          // '/boarding': (context) => const Boarding(),
          '/login': (context) => const Login(),
          '/': (context) => const NewHomeScreen(),
          // '/': (context) => const HomeScreen(),
          '/travel': (context) => const DesNav(),
          '/events': (context) => const Events_screen(),
          '/commercial': (context) => const CommNav(),
          '/tours': (context) => const Tours_screen(),
          '/info': (context) => const Info(),
          '/ulaanbaatar': (context) => const Ubhome(),
          '/newaccommodation': (context) => const NewAccommodation(),
          '/comingsoon': (context) => const Coming_Soon(),
          '/historyinfo': (context) => const HistoryInfo(),

          /* ======================================= NOMADIC LIFE STYLE => ART => MUSIC ROUTES  ==================================== */
          '/yatga': (context) => const Yatga(),
          '/khuuchir': (context) => const Khuuchir(),
          '/limbe': (context) => const Limbe(),
          '/tovshuur': (context) => const Tovshuur(),
          '/bishguur': (context) => const Bishguur(),
          '/shamandrum': (context) => const ShamanDrum(),
          '/longsong': (context) => const UrtiinDuu(),
          '/shortsong': (context) => const BoginoDuu(),
          '/throatsing': (context) => const Khoomei(),
          '/praisesong': (context) => const Magtaal(),
          '/epicstory': (context) => const Tuuli(),

          /* ============================================== NOMADIC LIFE STYLE => ART => DANCE ROUTES ===================================== */
          '/tsam': (context) => const Tsam(),
          '/khuurchir': (context) => const HorseDance(),
          '/court': (context) => const CourtDance(),
          '/danceofwrestler': (context) => const WrestlerDance(),

          /* ============================================ NOMADIC LIFE STYLE => ART => PAINTING ROUTES =================================== */
          '/miniature': (context) => const MiniaturePainting(),
          '/contemporary': (context) => const ContemporaryPainting(),
          '/murals': (context) => const MuralsPainting(),

          /* ============================================ NOMADIC LIFE STYLE => CLOTHING ROUTES =================================== */
          '/boots': (context) => const Boots(),
          '/headwear': (context) => const Headwear(),
          '/accessories': (context) => const Accessories(),

          /* ============================================ NOMADIC LIFE STYLE => CRAFTING ROUTES =================================== */
          '/cashmere': (context) => const Cashmere(),
          '/leather': (context) => const Leather(),
          '/fur': (context) => const Fur(),
          '/wood': (context) => const WoodInfo(),
          '/gemstones': (context) => const Gemstones(),

          /* ============================================ Virtual CITY TOUR =================================== */
          '/day2': (context) => const Day2Screen(),
          '/day3': (context) => const Day3Screen(),
        },
      ),
    );
  }
}
