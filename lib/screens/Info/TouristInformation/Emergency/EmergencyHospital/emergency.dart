import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitub/screens/Info/TouristInformation/Emergency/EmergencyHospital/emergency_hospital.dart';
import 'package:visitub/screens/Info/TouristInformation/Emergency/PhoneNumbers/home_screen.dart';
import 'package:visitub/screens/Info/TouristInformation/Emergency/SafetyInMongolia/home_screen.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Emergency',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please note that while these hospitals are among the prominent medical facilities in Ulaanbaatar, the availability of specialized medical services can be limited in more remote areas of Mongolia. If you`re planning to travel to rural or remote regions, it`s essential to be prepared for basic first aid and to carry any necessary medications or medical supplies with you. Additionally, consider checking with your embassy or consulate in Mongolia for updated information on medical facilities and any recommendations for medical care during your stay. Travelers are also encouraged to have comprehensive travel insurance that covers medical emergencies and evacuation services to ensure they receive the best possible care if needed.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmergencyHospital(),
                      )),
                  child: Column(
                    children: [
                      Icon(
                        Icons.local_hospital,
                        size: 50,
                        color: HexColor('#F6C667'),
                      ),
                      Text('Emergencies'),
                      Text('hospital')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneNumber(),
                      )),
                  child: Column(
                    children: [
                      Icon(
                        Icons.contact_phone_rounded,
                        size: 50,
                        color: HexColor('#B30753'),
                      ),
                      Text('Phone'),
                      Text('numbers')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SafetyInMongolia(),
                      )),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 90)),
                      Icon(
                        Icons.gpp_good_rounded,
                        size: 50,
                        color: HexColor('##BFF4ED'),
                      ),
                      Text('Safety in'),
                      Text('Mongolia')
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
