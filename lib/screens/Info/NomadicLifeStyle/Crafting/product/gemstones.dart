import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visitub/style/app_style.dart';

class Gemstones extends StatefulWidget {
  const Gemstones({super.key});

  @override
  State<Gemstones> createState() => _GemstonesState();
}

class _GemstonesState extends State<Gemstones> {
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
                      image: NetworkImage(AppStyle.gemstones))),
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
                    'Historical and Cultural Significance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Historically, gemstones have been valued in Mongolia for their beauty and supposed mystical properties. They have been used as amulets and talismans, believed to offer protection, healing, and spiritual benefits to the wearer. This tradition is rooted in both the shamanistic practices of ancient Mongolia and the later influence of Tibetan Buddhism, which also places a high value on certain gemstones for their spiritual significance.',
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
                    'Gemstone Crafts in Mongolia',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Jewelry:   One of the most common uses of gemstones in Mongolian handicrafts is in jewelry making. Artisans craft necklaces, bracelets, earrings, and rings featuring beautifully polished gemstones set in silver or gold. These pieces often incorporate traditional Mongolian motifs and symbols, such as the eternal knot, and are worn both as decorative items and for their spiritual significance.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Decorative Items:   Beyond jewelry, gemstones are used to adorn a variety of decorative items, including religious objects, household items, and traditional clothing accessories. Prayer beads, statues, and ritual implements inlaid with gemstones are common in Mongolian Buddhism, serving both a functional and spiritual purpose.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Amulets and Talismans:    Reflecting the ancient belief in the protective and healing powers of gemstones, Mongolian artisans create amulets and talismans. These items are often personalized, containing specific stones believed to offer benefits aligned with the wearer’s needs or desires.',
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
                    'Artistry and Techniques',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'The crafting of gemstone items in Mongolia involves a range of specialized techniques:',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lapidary Work:   The cutting, polishing, and engraving of gemstones are skills that require precision and a deep understanding of the material. Mongolian lapidaries are adept at transforming rough stones into polished gems that highlight their natural beauty.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Metalworking:   Setting gemstones into metal requires expertise in metalworking. Mongolian artisans use techniques such as filigree and engraving to create intricate settings that enhance the beauty of the gemstones.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Khoorog: The Mongolian Snuff Bottle',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'The khoorog, a traditional Mongolian snuff bottle, is a small, exquisitely crafted container used to hold powdered tobacco snuff. These bottles are not only utilitarian objects but also significant cultural symbols, reflecting Mongolia`s social traditions, artistry, and the deep-rooted practice of snuff-taking among Mongolians.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(AppStyle.hoorog))),
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
                    'Material and Craftsmanship:   Khoorogs are made from a variety of materials, including metal, stone, wood, and sometimes even precious gemstones. Artisans meticulously carve, shape, and polish these materials to create bottles that are both beautiful and functional. The craftsmanship involved in creating a khoorog is highly respected, with designs that often feature traditional Mongolian motifs, intricate patterns, and sometimes calligraphy.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cultural Significance:   The practice of sharing snuff from a khoorog is a traditional Mongolian gesture of greeting, respect, and friendship. During meetings, the khoorog is passed among participants, each taking a pinch of snuff as a sign of goodwill. This custom is deeply ingrained in Mongolian social rituals, symbolizing hospitality and camaraderie.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Gemstone Inlay:   Some of the most prized khoorogs are those adorned with gemstones. Artisans skillfully inset stones such as turquoise, coral, and agate into the bottles, enhancing their beauty and value. These gemstone-inlaid khoorogs are often treasured as family heirlooms or given as prestigious gifts.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  Text(
                      'Mongolian handicrafts, with their diverse materials and skilled craftsmanship, are a testament to the ingenuity and resilience of the Mongolian people. Each crafted item, from felted wool garments to gemstone-adorned jewelry, carries with it the essence of Mongolia`s rich cultural heritage and the intimate relationship between the nomads and their natural environment.',
                      style: TextStyle(color: Colors.white, wordSpacing: 2))
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
