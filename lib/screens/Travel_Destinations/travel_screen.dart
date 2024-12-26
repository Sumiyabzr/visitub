import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitub/provider/common.dart';
import 'package:visitub/screens/Profile/profile.dart';
import 'package:visitub/screens/Travel_Destinations/Accommodation.dart';
import 'package:visitub/screens/Travel_Destinations/Destinations.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 28,
                  color: Colors.black,
                )),
            leadingWidth: 30,
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Travel Destinations",
              style: TextStyle(fontSize: 16),
            ),
            titleSpacing: 10,
            // centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.w700),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 28,
                      child: IconButton(
                          onPressed: () {
                            showSearch(
                              context: context,
                              delegate: CustomSearchDelegate(),
                            );
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 28,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 28,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ));
                        },
                        icon: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Material(
                  child: Container(
                    height: 55,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: TabBar(
                      physics: const ClampingScrollPhysics(),
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade700),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 35,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    child: Icon(Icons.location_on),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text('Destinations'),
                                  ),
                                ]),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 35,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    child: Icon(Icons.home),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text('Accommodation'),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                      Center(child: Destinations()),
                      Center(
                        child: Accommodation(),
                      ),
                    ]))
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Aglag Buteel Monastery',
    'Amarbaysgalant Monastery'
        'Altai Tavan Bogd',
    'Baldan Bereeven Monastery'
        'Bayanzag',
    'Baga Turgenii Khurkheree'
        'Baga Gazariin Chuluu',
    'Buir Lake'
        'Chuluut Valley',
    'Dadal'
        'Elsen Tasarkhai',
    'Erdenezuu',
    'Genghis Khan Statue Complex',
    'Gorkhi-Terelj National Park',
    'Huisiin 8 Lake',
    'Husliin Uul'
        'Ikh Gazariin Chuluu',
    'Ikh Burkhant Complex',
    'Khalkh River'
        'Khamriin Khiid'
        'Khustain Nuruu National Park',
    'Khorgo Extinct Volcano',
    'Khongoryn Els'
        'Khetsuu Khad',
    'Khuvsgul Lake '
        'Mukhart`s River',
    'Menen Steppe',
    'Menen Steppe Monuments'
        'Olgii City',
    'Senjit Khad',
    'Taiga and Tsaatan People'
        'Tuvkhun Khiid',
    'Tsenkher Hot Springs',
    'Ter Ikh Tsagaan Lake'
        'Taikhar Rock',
    'Tsagaan Suvraga'
        'Ulaan Tsutgalan'
        'Ugii Lake',
    'Ulaagchiin Khar Lake'
        'Yolyn Am'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
