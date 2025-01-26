import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitub/style/app_style.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(AppStyle.weather), fit: BoxFit.cover)),
              width: size.width,
              height: size.width * 0.7,
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_rounded)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Winter(),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          width: size.width * 0.45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor('#C77F44')),
                                  child: Icon(
                                    Icons.cloudy_snowing,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Winter',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'November - February',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Spring(),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          width: size.width * 0.45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor('#C77F44')),
                                  child: Icon(
                                    Icons.cloud,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Spring',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'March - May',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ////////////////////////////////// ROW2 /////////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Summer(),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          width: size.width * 0.45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor('#C77F44')),
                                  child: Icon(
                                    Icons.wb_sunny_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Summer',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'June - August',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Autumn(),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          width: size.width * 0.45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor('#C77F44')),
                                  child: Icon(
                                    Icons.wb_sunny_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Autumn',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'September - October',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mongolia is known for its extreme continental climate, characterized by dramatic temperature variations throughout the year. The country experiences four distinct seasons: with the longest being winter, spring, a short summer, and a brief autumn. Very little precipitations are recorded, only focused during the summer season. With over 300 sunny days a year, Mongolia is considered the land of the blue sky.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'Mongolia being a vast country, roughly three times the size of France, the weather patterns vary across its regions. Some, like the Gobi Desert (located in the South) experiences arid and desert-like conditions, while the Northern territories around the Khuvsgul lake are influenced by the Siberian climate, with more rainfall.',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'To consider as well the higher altitude regions such as around the Altai mountains range for example, dictates very fast changing weather patterns, and general lower temperatures than the rest of the country.',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'Depending on your travel plans, it is recommended to check weather-related information close to the locations you intend to visit, in order to be prepared. It is common to witness snow fall even during the summer days in some areas. Although Mongolians jokingly tell the possibility of experiencing the “four seasons within one day”, this is in fact a reality. During Summer, the nights can be fresh to cold depending on your location, and a great preparation of your pack is essential.',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'Likewise, for the winter months, more preparation needs to be considered, the choice of layers and insulation, accessories like gloves and hats to remain warm no matter what.',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'Please consult with locals and travel guides for the most up-to-date information on your specific trip’s weather conditions.',
                      textAlign: TextAlign.justify),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Winter extends StatefulWidget {
  const Winter({super.key});

  @override
  State<Winter> createState() => _WinterState();
}

class _WinterState extends State<Winter> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.width * 0.3),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: Colors.white),
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#C77F44'),
                  ),
                  child: Icon(
                    Icons.cloudy_snowing,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Winter',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('November - February'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'The winters in Mongolia are quite long and feature harsh, down to extremely cold temperatures. In some areas, temperatures can drop as low as -50°C (-58°F). Snowfall is more common at the beginning and the end of the winter, and remain sunny throughout the season. Many rivers and lakes freeze over, making it suitable for driving on top, and accessing various types of winter sports. Average temperatures are between -10°C and -35°C during this period. The coldest days of the year are set by the last week of January. ',
                  textAlign: TextAlign.justify,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Close',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Spring extends StatefulWidget {
  const Spring({super.key});

  @override
  State<Spring> createState() => _SpringState();
}

class _SpringState extends State<Spring> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.width * 0.25),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: Colors.white),
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#C77F44'),
                  ),
                  child: Icon(
                    Icons.cloud,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Spring',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('March - May'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Spring in Mongolia is a beautiful period of transition. Ending the long winter months, the temperatures gradually rise, and the snow begins to melt. It`s a good time to witness the resurgence of plants and the animal life. It is generally a very welcomed season by the nomads, since most of their animal births are set during Spring. In terms of temperatures a wide range is to be expected, on average between -15°C (5°F) and +25°C (50°F) during this period. As being a transitional season, Spring brings a lot of wind, with the air temperature felt colder, and sand storms often seen in the Gobi desert that can reach up to the Capital Ulaanbaatar.',
                  textAlign: TextAlign.justify,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Close',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Summer extends StatefulWidget {
  const Summer({super.key});

  @override
  State<Summer> createState() => _SummerState();
}

class _SummerState extends State<Summer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.width * 0.15),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: Colors.white),
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#C77F44'),
                  ),
                  child: Icon(
                    Icons.wb_sunny_rounded,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Summer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('June - August'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Summer is short but it is the most pleasant season for traveling in Mongolia. The weather is warm to hot, with temperatures often reaching 30°C (86°F) or higher. It`s an excellent time for many outdoor activities, such as hiking, camping, horse riding, and exploring Mongolia`s vast landscapes. As well, the livestock produce their best milk at this period, thus providing many more treats along the way while visiting nomadic families. This is the praised time to travel with agencies, and the official Touristic season for many companies and camps operating at the countryside. This is also the only season when rain is falling: especially between July and August, throughout the country. As a result, some regions can experience flooding with difficult access to main roads.',
                  textAlign: TextAlign.justify,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Close',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Autumn extends StatefulWidget {
  const Autumn({super.key});

  @override
  State<Autumn> createState() => _AutumnState();
}

class _AutumnState extends State<Autumn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.width * 0.35),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: Colors.white),
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#C77F44'),
                  ),
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Autumn',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('September - October'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'The last transitional season, Autumn is characterized by mild and comfortable temperatures. It`s an ideal time to visit if you prefer cooler weather, and less tourism activity. The landscapes are adorned with vibrant fall colors, but the leaves fall very quickly. The temperatures gradually go down to -15°C (5°F) and prepare everyone to the harsh reality of winter to come.',
                  textAlign: TextAlign.justify,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Close',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
