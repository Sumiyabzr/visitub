import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Khoomei extends StatefulWidget {
  const Khoomei({super.key});

  @override
  State<Khoomei> createState() => _KhoomeiState();
}

class _KhoomeiState extends State<Khoomei> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('http://192.168.1.83:8000/asset/images/ulaanbaatar history/khoomii.webp'))),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1)
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Stack(children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_rounded),
                            color: Colors.white,
                            iconSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Khoomei, or throat singing, is a mesmerizing vocal technique originating from Mongolia, particularly associated with the regions of Tuva and Western Mongolia. This extraordinary art form allows a singer to produce multiple pitches simultaneously, creating a complex and harmonious sound that is deeply evocative of the natural landscapes and spiritual life of the Mongolian people. Khoomei is not just a musical expression but a profound manifestation of the Mongolian ethos, embodying the symbiotic relationship between humans and the natural world.', style: TextStyle(color: Colors.white), textAlign: TextAlign.justify,).animate().fade(delay: 800.ms),
                  SizedBox(height: 20,),
                  Text(
                    'Historical and Cultural Significance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ).animate().flipV(delay: 500.ms).move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'The origins of Khoomei date back centuries, deeply rooted in the nomadic culture of Mongolia where music played a vital role in daily life, rituals, and ceremonies. It is believed that Khoomei was inspired by the need to mimic the sounds of nature, such as the flow of rivers, the whistle of the wind, and the calls of animals, thereby fostering a sense of harmony and interconnectedness with the environment. Khoomei reflects the spiritual beliefs and practices of the Mongolian people, often performed in shamanistic rituals and Buddhist ceremonies to invoke spirits and harmonize with the cosmos. The technique has been passed down through generations, with each region and community adding its unique variations to the practice.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
          
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Techniques and Styles',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ).animate().flipV(delay: 500.ms).move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Khoomei involves the precise control of the vocal folds to produce a fundamental pitch while simultaneously modulating the resonances of the vocal tract to amplify overtones or harmonic frequencies, creating multiple pitches at once. Practitioners of Khoomei often use visualization and physical techniques to control their breathing and vocal articulation, achieving the distinct sound that characterizes this style of singing. There are several styles of Khoomei, each with its own characteristic sound and technique, including:',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(height: 15,),
                   Text(
                    'Sygyt:Emphasizing high-pitched overtones that resemble whistling.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(height: 15,),
                   Text(
                    'Kargyraa:Producing a deep, growling tone that resonates in the chest.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(height: 15,),
                   Text(
                    'Khöömei:The more general style that balances both the drone and the harmonics, named after the art form itself.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(height: 15,),
                   Text(
                    'Ezengileer:Characterized by rhythmic pulsations in the overtones, simulating the trot of a horse.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
           
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contemporary Practice and Global Recognition',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ).animate().flipV(delay: 500.ms).move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'In recent years, Khoomei has gained international recognition, captivating audiences worldwide with its unique sound and profound cultural significance. Festivals, competitions, and workshops dedicated to throat singing have emerged, both in Mongolia and abroad, fostering a global appreciation for this art form. UNESCO has recognized Khoomei as an Intangible Cultural Heritage of Humanity, highlighting its importance in the cultural heritage of Mongolia and its contribution to the diversity of human expressions. Contemporary musicians and ensembles have incorporated Khoomei into a wide range of musical genres, from traditional Mongolian music to experimental and fusion projects, showcasing its versatility and universal appeal.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Conclusion',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ).animate().flipV(delay: 500.ms).move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Khoomei stands as a testament to the ingenuity and spirituality of the Mongolian people, a vocal technique that transcends mere musical performance to become a profound expression of the connection between humans and the natural world. Its haunting beauty and technical mastery continue to inspire and awe, bridging cultural divides and bringing the rich heritage of Mongolia to the global stage.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: 
                        [
                          Icon(Icons.arrow_back_rounded, color: Colors.black, size: 20,), 
                          Text('Back to Music', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)
                        ]),
                      ),
                    ),
                  ),
                   GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context, '/praisesong'),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: 
                        [
                          Text('Continue reading Praise Songs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                           Icon(Icons.arrow_forward_rounded, color: Colors.black, size: 20,),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}