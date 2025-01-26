import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visitub/style/app_style.dart';

class Wool extends StatefulWidget {
  const Wool({super.key});

  @override
  State<Wool> createState() => _WoolState();
}

class _WoolState extends State<Wool> {
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
                          'http://192.168.1.83:8000/asset/Other/wool1.jpg'))),
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
                    'Wool, one of the most fundamental and versatile materials in Mongolian handicrafts, plays a pivotal role in the nomadic lifestyle and cultural traditions of Mongolia. The significance of wool in Mongolian society is deeply intertwined with the country’s reliance on livestock, especially sheep, which are a central pillar of the nomadic economy. Wool serves as a critical resource for clothing, housing, and everyday items, showcasing the ingenuity and adaptability of Mongolian craftspeople.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Wool in Mongolian Culture',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Mongolia’s harsh climatic conditions, with its cold winters and variable temperatures, necessitate the use of materials that provide insulation and durability. Wool, with its natural warmth, breathability, and water-resistant properties, meets these needs perfectly. The annual sheep shearing is more than a routine agricultural task; it`s a communal activity that reinforces social bonds and marks the rhythm of nomadic life.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(AppStyle.wool))),
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
                    'The Craft of Felt Making',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Felt making is perhaps the most iconic use of wool in Mongolia, a craft that dates back millennia and is integral to the construction of gers (yurts), Mongolia`s traditional dwellings.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Process:   The process begins with the cleaning and carding of wool to align the fibers. Next, layers of wool are spread out and moistened with water and sometimes soap. The wool is then rolled and pressed, traditionally by being wrapped in a cloth and dragged behind a horse. This agitation, combined with the moisture, causes the wool fibers to mat together, forming felt.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Uses:   Felt is used extensively in Mongolian life, most notably as insulation for gers. It provides excellent thermal insulation, keeping interiors warm in winter and cool in summer. Felt is also used for making rugs, bags, hats, boots, and other clothing items, often decorated with vibrant patterns and colors through appliqué or embroidery.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(AppStyle.wool2))),
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
                    'Woolen Garments',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Mongolian woolen garments are renowned for their warmth, durability, and distinctive style.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Knitting and Weaving:   Beyond felt, wool is spun into yarn for knitting and weaving. This yarn is used to create a myriad of clothing items such as the traditional Mongolian deel, sweaters, mittens, socks, and scarves. These garments are essential for surviving the cold Mongolian winters and are often adorned with traditional patterns that carry cultural and sometimes symbolic significance.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dyes and Designs:   Natural dyes extracted from plants, minerals, and sometimes insects, are used to color the wool, producing a rich palette of earthy tones and vibrant hues. The designs woven or knitted into woolen items frequently draw inspiration from Mongolian nature, history, and mythology, featuring motifs such as the eternal knot, stylized animals, and natural landscapes.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(AppStyle.wool3))),
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
                    'Artistic Expression in Wool',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Wool serves not just as a material for utility items but also as a medium for artistic expression. Mongolian artisans have developed a variety of techniques to create decorative and functional art pieces from wool.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Embroidery and Appliqué:   Woolen fabrics serve as canvases for intricate embroidery and appliqué work, incorporating traditional Mongolian motifs and designs. These techniques are applied to clothing, felt rugs (Shirdak), wall hangings, and other decorative items, adding layers of meaning and beauty. The art of embroidery is often passed down through generations, with each region in Mongolia showcasing its distinctive style and color palette.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Felting Art:   Beyond traditional felt uses, contemporary Mongolian artists explore felt as an art medium, creating sculptures, installations, and pictorial art. This modern take on an ancient craft allows for cultural narratives to be woven into the artworks, telling stories of nomadic life, Mongolian legends, and the connection between humans and nature.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Innovation in Wool Crafts:   The global demand for sustainable and natural materials has led to innovation in Mongolian wool crafts. Artisans are blending traditional techniques with modern designs to create eco-friendly fashion, home decor, and accessories that appeal to a global market. This fusion of old and new helps preserve the wool crafting traditions while ensuring their relevance in today’s world.',
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
                    onTap: () =>
                        Navigator.popAndPushNamed(context, '/cashmere'),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Text(
                            'Continue reading Cashmere',
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
