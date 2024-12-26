import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visitub/style/app_style.dart';

class Leather extends StatefulWidget {
  const Leather({super.key});

  @override
  State<Leather> createState() => _LeatherState();
}

class _LeatherState extends State<Leather> {
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
                      image: NetworkImage(
                          'http://192.168.1.111:8000/asset/Other/wool3.jpg'))),
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
                  Text(
                    'Leather holds a prominent place in the tapestry of Mongolian craftsmanship, reflecting the country`s deep-rooted nomadic culture and the essential role livestock play in daily life. For centuries, Mongolians have harnessed the versatility and durability of leather to create a wide array of items, from traditional clothing and accessories to utilitarian objects essential for nomadic living. The use of leather in Mongolian craftsmanship is not only a testament to the material`s practicality but also to the artistry and cultural significance it embodies.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Historical and Cultural Context',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'The tradition of leatherworking in Mongolia is as ancient as the nomadic lifestyle itself. Mongolian herders, relying on their herds for survival, developed techniques to utilize every part of the animal, with leather serving multiple purposes in their daily lives. This resourcefulness is a hallmark of Mongolian craftsmanship, where leather is transformed into both functional items and works of art, often decorated with traditional motifs that carry cultural and symbolic meanings.',
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
                    'Leather Crafting Techniques',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Mongolian leather craftsmanship involves several traditional techniques, including tanning, dyeing, stitching, and embossing. The tanning process, crucial for converting raw hides into durable leather, is performed using natural methods that have been passed down through generations. Once tanned, the leather can be dyed using natural pigments, creating a vibrant palette for the artisan`s work. Stitching and embossing techniques are then employed to assemble and decorate leather goods. Intricate patterns, inspired by nature and Mongolian symbolism, are often embossed onto the leather, showcasing the artisan`s skill and the rich cultural heritage of Mongolia.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Leather in Mongolian Traditional Items',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Deels and Boots:   Leather is a key material in the making of traditional Mongolian clothing, including the Deel (a long robe) and Gutal (boots). Leather boots, in particular, are renowned for their durability and distinctive design, featuring upturned toes that reflect Mongolian aesthetic sensibilities.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Accessories:    Leather belts, pouches, and bags are commonly used accessories in Mongolia, often adorned with silver and precious stones. These items are not only practical but also carry significant cultural meaning, serving as indicators of the wearer`s status and identity.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ger Furnishings:   In the traditional Mongolian ger (yurt), leather is used to create durable and decorative elements, including storage bags, straps for securing the ger structure, and covers that protect against the elements.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Horse Tack:   Reflecting the centrality of horses in Mongolian culture, leather is extensively used to craft saddles, bridles, and other horse tack, combining functionality with ornamental beauty.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(AppStyle.leather))),
                width: size.width,
                height: size.width,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contemporary Relevance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Today, Mongolian leather craftsmanship continues to thrive, with artisans blending traditional techniques and motifs with modern designs. The global interest in sustainable and ethically produced goods has spotlighted Mongolian leatherwork, valuing its handcrafted quality and cultural authenticity. Leather artisans and workshops are exploring innovative ways to sustain their craft, ensuring that this ancient tradition remains a vibrant part of Mongolia`s cultural expression and economic livelihood.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(AppStyle.leather2))),
                width: size.width,
                height: size.width,
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
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Leather in Mongolian craftsmanship is a profound reflection of the nation`s nomadic heritage, resourcefulness, and artistic ingenuity. From traditional attire to everyday objects, leather items carry the spirit of Mongolia, embodying the resilience, beauty, and depth of its culture. As Mongolian leather craftsmanship continues to evolve, it remains a cherished link to the past and a beacon of cultural pride and sustainability.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            'Back to Crafting',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          )
                        ]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context, '/fur'),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Text(
                            'Continue reading Fur',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
