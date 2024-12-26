import 'package:flutter/material.dart';
import 'package:visitub/screens/coming_soon_pop_up.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Food',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  '"5 Hoshuu mal" (5 хошуу мал) is a Mongolian term that translates to "five livestock." It refers to the five primary types of domesticated animals traditionally raised by Mongolian nomads. These livestock are central to their way of life, providing essential resources for sustenance, transportation, and trade. The "five livestock" consist of the following: Horses: Horses are the most iconic animals in Mongolian culture and history. They are valued for their speed, endurance, and versatility. Mongolian nomads use horses for transportation, herding, hunting, and participating in traditional sports and festivals like horse racing and archery.'),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Coming_Soon(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/foodmeat.jpg'))),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Meat',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Coming_Soon(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.1.111:8000/asset/fooddairy.jpg'))),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Dairy',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    // Scaffold(
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: Text(
    //       'Food',
    //       style: TextStyle(
    //           color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    //     ),
    //     backgroundColor: Colors.white,
    //     elevation: 0,
    //     leading: IconButton(
    //         onPressed: () => Navigator.pop(context),
    //         icon: Icon(
    //           Icons.arrow_back_rounded,
    //           color: Colors.black,
    //           size: 28,
    //         )),
    //   ),
    //   body: SingleChildScrollView(
    //     physics: BouncingScrollPhysics(),
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //       child: Column(
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               GestureDetector(
    //                 // onTap: () => Navigator.push(
    //                 //     context,
    //                 //     MaterialPageRoute(
    //                 //       builder: (context) => Meat(),
    //                 //     )),
    //                 child: Container(
    //                   alignment: Alignment.topCenter,
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(8),
    //                       image: DecorationImage(
    //                           image: NetworkImage(
    //                               'http://192.168.1.111:8000/asset/foodmeat.jpg'),
    //                           fit: BoxFit.cover)),
    //                   child: Text(
    //                     'Meat',
    //                     style: TextStyle(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white),
    //                   ),
    //                   width: size.width * 0.45,
    //                   height: size.height * 0.45,
    //                 ),
    //               ),
    //               GestureDetector(
    //                 // onTap: () => Navigator.push(
    //                 //     context,
    //                 //     MaterialPageRoute(
    //                 //       builder: (context) => Dairy(),
    //                 //     )),
    //                 child: Container(
    //                   alignment: Alignment.topCenter,
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(8),
    //                       image: DecorationImage(
    //                           image: NetworkImage(
    //                               'http://192.168.1.111:8000/asset/fooddairy.jpg'),
    //                           fit: BoxFit.cover)),
    //                   child: Text(
    //                     'Dairy',
    //                     style: TextStyle(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white),
    //                   ),
    //                   width: size.width * 0.45,
    //                   height: size.height * 0.45,
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SizedBox(
    //             child: Text(
    //                 'The ancient Mongolian diet was heavily influenced by the seasonal changes and the availability of food resources in the region. The nomadic lifestyle of ancient Mongols required them to adapt their diet to the changing seasons and the movements of their livestock. Here`s how the ancient Mongolian diet likely varied due to seasons:'),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SizedBox(
    //             child: Text(
    //                 'Spring: During the spring season, as the snow began to melt and the grass started to grow, nomadic herders moved their livestock to areas with fresh pastures. This allowed the animals to graze on new grass, which was abundant in nutrients after the long winter. During this time, the diet of the Mongols mainly consisted of dairy products like airag (fermented mare`s milk), yogurt, and other dairy-based dishes.'),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SizedBox(
    //             child: Text(
    //                 'Summer: Summer was the peak grazing season, and herders would let their animals roam freely on the lush grasslands. Mongolians took advantage of this season to consume fresh dairy products, as well as meat from animals that were slaughtered for special occasions or festivals. Meat dishes like khuushuur (deep-fried meat pastry) and buuz (steamed meat dumplings) were popular during the summer months.'),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SizedBox(
    //             child: Text(
    //                 'Autumn: As the summer came to an end, herders prepared for the colder months by preserving food for the winter. This included making dried cheese curds called aaruul and airag, which would be stored for consumption during the winter. Additionally, some animals were slaughtered and their meat was dried or preserved through other methods to last through the colder months.'),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SizedBox(
    //             child: Text(
    //                 'Winter: Winter in Mongolia is harsh and challenging, with extreme cold temperatures and limited access to fresh food. During this time, the diet relied heavily on preserved food from the previous seasons, such as dried meat and dairy products. The Mongols would also consume hearty and warming soups like shorlog, made with meat and vegetables, to keep them nourished and warm.'),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SizedBox(
    //             child: Text(
    //                 'Throughout the year, the diet of ancient Mongolians was primarily based on animal products, including meat, dairy, and sometimes animal fat, due to the scarcity of plant-based foods in the harsh climate. The nomadic lifestyle required resourcefulness and adaptability, and the Mongolian diet was carefully planned to ensure that both the people and their animals had enough food to sustain them throughout the changing seasons.'),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
