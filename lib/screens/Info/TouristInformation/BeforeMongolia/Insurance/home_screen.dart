import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Insurance extends StatefulWidget {
  const Insurance({super.key});

  @override
  State<Insurance> createState() => _InsuranceState();
}

class _InsuranceState extends State<Insurance> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Travel insurances', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_rounded, color: Colors.black,)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Text('When traveling to Mongolia, it`s essential to have comprehensive travel insurance that covers a range of potential risks and mishaps that you may encounter during your journey. Some of the details can be covered within your international travel insurance, and others negotiated with your local travel agency while booking your journey. Here are some key features to look for in your travel insurance for Mongolia:'),
              SizedBox(height: 20,),
              /////////////////////////////////   ROW1   ////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => MedicalCoverage(),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.medical_services, color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                    GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) => EmergencyEvacuation(),);
                      },
                      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.airplane_ticket, color: Colors.white,),
                          )
                        ],
                      ),
                                      ),
                    ),
                   GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => TripCancellation(),);
                    },
                     child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.airplanemode_off_rounded, color: Colors.white,),
                          )
                        ],
                      ),
                                     ),
                   ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.28,
                    child: Text('Medical Coverage', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Emergency Evacuation and Repatriation', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Trip Cancellation and Interruption', textAlign: TextAlign.center,),
                  ),
                ],
              ),
              /////////////////////////////   ROW2   //////////////////////////////////////////
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => LostStolen(),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.swipe_left_rounded, color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                    GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) => DelayedFights(),);
                      },
                      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.airplanemode_active_rounded, color: Colors.white,),
                          )
                        ],
                      ),
                                      ),
                    ),
                   GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => EmergencyAssistance(),);
                    },
                     child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.clean_hands_rounded, color: Colors.white,),
                          )
                        ],
                      ),
                                     ),
                   ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.28,
                    child: Text('Lost or Stolen Belongings', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Delayed flights and Missed Connections', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Emergency Assistance Services', textAlign: TextAlign.center,),
                  ),
                ],
              ),
              //////////////////////////////////   ROW3   ///////////////////////////////////////
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => AdventureActivities(),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.dashboard, color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                    GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) => PersonalLiability(),);
                      },
                      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.shield, color: Colors.white,),
                          )
                        ],
                      ),
                                      ),
                    ),
                   GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => PreExisting(),);
                    },
                     child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.add, color: Colors.white,),
                          )
                        ],
                      ),
                                     ),
                   ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.28,
                    child: Text('Adventure Activities Coverage', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Personal Liability Coverage', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Pre-Existing Medical Conditions', textAlign: TextAlign.center,),
                  ),
                ],
              ),
              /////////////////////////////////////   ROW4   /////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => DurationCoverage(),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.medical_services, color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                    GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) => TravelAdvisories(),);
                      },
                      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.mode_of_travel_outlined, color: Colors.white,),
                          )
                        ],
                      ),
                                      ),
                    ),
                   GestureDetector(
                    onTap: () {
                      showDialog(context: context, builder: (context) => Customization(),);
                    },
                     child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#136A3F')
                            ),
                            child: Icon(Icons.dashboard_customize, color: Colors.white,),
                          )
                        ],
                      ),
                                     ),
                   ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.28,
                    child: Text('Duration of Coverage', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Travel Advisories', textAlign: TextAlign.center,),
                  ),
                     Container(
                    width: size.width * 0.28,
                    child: Text('Customization', textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MedicalCoverage extends StatefulWidget {
  const MedicalCoverage({super.key});

  @override
  State<MedicalCoverage> createState() => _MedicalCoverageState();
}

class _MedicalCoverageState extends State<MedicalCoverage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.4),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.medical_services, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Medical Coverage', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Ensure that your policy covers medical expenses, including doctor visits, poentential hospitalization, and emergency medical evacuation. Mongolia`s healthcare facilities may vary in quality, and you want to be prepared for any unexpected health issues. Most travel insurances will have contract in place with the best hospitals in Ulaanbaatar city, and it is a good practice to know this information in advance.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class EmergencyEvacuation extends StatefulWidget {
  const EmergencyEvacuation({super.key});

  @override
  State<EmergencyEvacuation> createState() => _EmergencyEvacuationState();
}

class _EmergencyEvacuationState extends State<EmergencyEvacuation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.3),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.airplane_ticket, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Emergency Evacuation and Repatriation', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Your insurance should provide coverage for emergency evacuations, especially if you plan to explore remote areas in Mongolia. This coverage ensures that you can be transported to the nearest suitable medical facility in case of a serious injury or illness. In practice, and because of the remote nature and chaotic roads of the countryside, most local tour operators shall transport you to the nearest medical facility of the region for a first assessment, and if judged appropriate, to bring you back to the capital city to a specialized hospital.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class TripCancellation extends StatefulWidget {
  const TripCancellation({super.key});

  @override
  State<TripCancellation> createState() => _TripCancellationState();
}

class _TripCancellationState extends State<TripCancellation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.5),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.airplanemode_off_rounded, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Trip Cancellation and Interruption', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('If possible, choose a policy that covers trip cancellation and interruption, which can reimburse you for parts of your travel expenses if you need to cancel your trip or cut it short due to unforeseen circumstances. This can also be negotiated and discussed with your local tourism agency prior to your trip.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class LostStolen extends StatefulWidget {
  const LostStolen({super.key});

  @override
  State<LostStolen> createState() => _LostStolenState();
}

class _LostStolenState extends State<LostStolen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.6),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.swipe_left_rounded, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Lost or Stolen Belongings', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Your insurance should cover loss or theft of personal belongings, such as luggage, electronics, and other valuable items.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class DelayedFights extends StatefulWidget {
  const DelayedFights({super.key});

  @override
  State<DelayedFights> createState() => _DelayedFightsState();
}

class _DelayedFightsState extends State<DelayedFights> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.55),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.airplanemode_active_rounded, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Delayed flights and Missed Connections', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Make sure your policy includes coverage for travel delays, missed connections, and related expenses like accommodation and meals.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class EmergencyAssistance extends StatefulWidget {
  const EmergencyAssistance({super.key});

  @override
  State<EmergencyAssistance> createState() => _EmergencyAssistanceState();
}

class _EmergencyAssistanceState extends State<EmergencyAssistance> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.6),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.clean_hands_rounded, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Emergency Assistance Services', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Look for a policy that offers 24/7 emergency assistance services. This can be invaluable in situations where you need help with medical referrals.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class AdventureActivities extends StatefulWidget {
  const AdventureActivities({super.key});

  @override
  State<AdventureActivities> createState() => _AdventureActivitiesState();
}

class _AdventureActivitiesState extends State<AdventureActivities> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.5),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.dashboard, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Adventure Activities Coverage', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('If you plan to engage in adventure activities like hiking, horseback riding, or camel trekking, ensure your insurance covers these activities. Mongolia offers many opportunities for adventurous travelers.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class PersonalLiability extends StatefulWidget {
  const PersonalLiability({super.key});

  @override
  State<PersonalLiability> createState() => _PersonalLiabilityState();
}

class _PersonalLiabilityState extends State<PersonalLiability> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.5),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.shield, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Personal Liability Coverage', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Personal liability coverage can protect you if you accidentally cause harm to others or damage property during your trip. Although very rare, this is an essential policy to avoid further trouble down the road.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class PreExisting extends StatefulWidget {
  const PreExisting({super.key});

  @override
  State<PreExisting> createState() => _PreExistingState();
}

class _PreExistingState extends State<PreExisting> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.55),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.add, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Pre-Existing Medical Conditions', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('If you have pre-existing medical conditions, check if your policy covers them. Some insurers offer options to provide coverage for pre-existing conditions.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class DurationCoverage extends StatefulWidget {
  const DurationCoverage({super.key});

  @override
  State<DurationCoverage> createState() => _DurationCoverageState();
}

class _DurationCoverageState extends State<DurationCoverage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.6),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.medical_services, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Duration of Coverage', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Make sure your insurance policy covers the entire duration of your trip, including any planned extensions.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class TravelAdvisories extends StatefulWidget {
  const TravelAdvisories({super.key});

  @override
  State<TravelAdvisories> createState() => _TravelAdvisoriesState();
}

class _TravelAdvisoriesState extends State<TravelAdvisories> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.55),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.mode_of_travel_outlined, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Travel Advisories', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Stay informed about travel advisories and government-issued alerts related to Mongolia. Ensure that your insurance remains valid if you travel to areas with travel advisories.', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Customization extends StatefulWidget {
  const Customization({super.key});

  @override
  State<Customization> createState() => _CustomizationState();
}

class _CustomizationState extends State<Customization> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.4),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#136A3F')
                  ),
                  child: Icon(Icons.dashboard_customize, color: Colors.white,),
                ),
                SizedBox(height: 10,),
                Text('Customization', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
               Text('Consider policies that allow you to tailor your coverage based on your specific needs and concerns.Always read your policy documents carefully to understand the terms, conditions, and exclusions. It`s also advisable to compare quotes from different insurers to find the best coverage that suits your budget and travel plans. Your local travel agency can also propose you solutions in that regard, please feel free to ask them directly as well! ', textAlign: TextAlign.justify,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}