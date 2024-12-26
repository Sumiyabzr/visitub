import 'package:flutter/material.dart';
import 'package:visitub/screens/Info/TouristInformation/BeforeMongolia/Transportation/transportation.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transportation(),
    );
  }
}
