import 'package:flutter/material.dart';
import 'package:visitub/screens/Profile/edit_pro.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> tabs = [
    "Destination"
        "Accommodation"
        "Commercial"
        "Events"
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 28,
                )),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Edit_Profile(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.edit_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade300),
                      width: size.width * 0.2,
                      height: size.width * 0.2,
                      child: Icon(
                        Icons.supervised_user_circle_rounded,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yesugen Erkhem',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Joined in 2023')
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_active,
                            color: Colors.grey.shade600,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Notification',
                            style: TextStyle(fontSize: 14),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.grey.shade600,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Saved',
                            style: TextStyle(fontSize: 14),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_rounded,
                            color: Colors.grey.shade600,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Purchased products',
                            style: TextStyle(fontSize: 14),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled_sharp,
                            color: Colors.grey.shade600,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Appointments',
                            style: TextStyle(fontSize: 14),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
