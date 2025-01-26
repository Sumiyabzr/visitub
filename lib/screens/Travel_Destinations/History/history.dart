import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:visitub/style/app_style.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'History of Ulaanbaatar',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 28,
                color: Colors.black,
              ))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'History of Ulaanbaatar',
                        //   style: TextStyle(
                        //       fontSize: 25, fontWeight: FontWeight.bold),
                        // ),
                        // SizedBox(
                        //   height: 15,
                        // ),
                        Text(
                          'Early Settlements:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            'The history of Ulaanbaatar, Mongolia`s capital, is deeply intertwined with the ancient nomadic heritage of the region. Evidence of human presence in the area dates back to the Upper Paleolithic period, showcasing the nomadic lifestyle of early inhabitants who traversed the vast steppes. The emergence of distinct tribes, including the Khitan and Khamag Mongol, contributed to the rich tapestry of prehistoric Mongolia. While the steppes surrounding what would become Ulaanbaatar were home to nomadic communities, the city itself did not come into significant existence until later in history. These early settlements laid the groundwork for the cultural and historical developments that would shape Ulaanbaatar.')
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(AppStyle.earlysettlement))
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Establishment of Ulaanbaatar:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'The establishment of Ulaanbaatar as a city is closely tied to the foundation of the Erdene Zuu Monastery in 1639. The monastery, with its spiritual significance, became a focal point for settlement and cultural exchange. Ulaanbaatar`s strategic location along trade routes connecting China and Russia facilitated its growth as a center for commerce and diplomacy. As the Erdene Zuu Monastery became a prominent religious institution, the city around it evolved. Trade flourished, and Ulaanbaatar became a melting pot of cultures, echoing the nomadic traditions of the Mongolian people.'),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(AppStyle.estab),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Decline and Rise:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'Ulaanbaatar experienced periods of decline and resurgence over the centuries. In the 17th century, the city served as a temporary residence for nomadic leaders, contributing to its strategic importance. However, external invasions and conflicts led to moments of abandonment. The 18th century marked a resurgence for Ulaanbaatar as it gained prominence as a residence for the Javzandamba Khutagt, the spiritual leader of Tibetan Buddhism. The city`s significance grew, and it became a hub for cultural and religious activities.'),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(AppStyle.th),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chinese Influence and Independence:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'In the early 20th century, Ulaanbaatar faced external pressures from the Qing Dynasty in China. The desire for independence led to significant political changes. In 1911, following the Xinhai Revolution, Mongolia declared autonomy from the Qing Dynasty, and Ulaanbaatar became the capital of the newly independent Bogd Khanate. The early years of independence were marked by efforts to establish a distinct Mongolian identity and governance. Ulaanbaatar played a central role in shaping the nation`s path toward self-determination.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(AppStyle.chinese),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Socialist Period:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'The mid-20th century brought about transformative changes as Mongolia embraced socialism and aligned itself with the Soviet Union. Ulaanbaatar underwent significant urbanization and modernization during this period. Socialist-style buildings emerged, shaping the city`s architectural landscape. The city became a center for political and administrative activities. Economic policies shifted toward collectivization, and Ulaanbaatar evolved as a symbol of socialist aspirations. The city`s growth and development mirrored the broader political and economic changes sweeping through Mongolia.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(AppStyle.social),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Democratic Transition:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'The late 20th century marked a turning point for Ulaanbaatar and Mongolia. In 1990, Mongolia peacefully transitioned to a multi-party democracy, bringing an end to socialist rule. Ulaanbaatar became a symbol of democratic governance and economic reforms. The city witnessed a period of political pluralism, economic restructuring, and diplomatic outreach. Ulaanbaatar`s role expanded beyond being a political center to becoming a bridge between East and West in terms of diplomatic relations.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(AppStyle.democ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Modern Ulaanbaatar:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'Today, Ulaanbaatar stands as a vibrant metropolis, embodying a fusion of traditional Mongolian culture and modern influences. The city`s skyline is adorned with skyscrapers, reflecting rapid urbanization and economic growth. Shopping centers, educational institutions, and modern amenities coexist with historic monasteries and cultural landmarks.Ulaanbaatar`s modern identity is shaped by a dynamic blend of tradition and progress. The city has become an economic, political, and cultural hub, attracting a diverse population. Nomadic traditions remain integral to the city`s character, and annual events like the Naadam festival celebrate Mongolia`s rich cultural heritage.As Mongolia navigates the complexities of the 21st century, Ulaanbaatar continues to evolve. Its journey from ancient nomadic settlements to a thriving modern capital encapsulates the resilience, adaptability, and enduring cultural legacy of the Mongolian people. The city remains a testament to Mongolia`s ability to embrace both its rich heritage and the challenges of a rapidly changing world.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(AppStyle.modernub),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
