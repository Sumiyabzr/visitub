import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visitub/style/app_style.dart';

class Fur extends StatefulWidget {
  const Fur({super.key});

  @override
  State<Fur> createState() => _FurState();
}

class _FurState extends State<Fur> {
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
                          'http://192.168.1.111:8000/asset/Other/wool4.jpg'))),
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
                    'Fur plays an indispensable role in Mongolian crafting, reflecting the country`s adaptation to its harsh and variable climate. As a vital component of traditional Mongolian attire and artifacts, fur not only provides essential warmth and protection but also serves as a medium for artistic expression and cultural identity. The use of fur in Mongolian crafting is deeply interwoven with the nomadic lifestyle, highlighting the symbiotic relationship between humans and nature.',
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
                    'For centuries, Mongolians have relied on their livestock not just for food but also for materials to create clothing, shelter, and other necessities. The harsh winters of Mongolia, where temperatures can plummet far below freezing, necessitated the development of fur crafting techniques that have been honed over generations. These techniques not only ensured survival but also gave rise to a rich tradition of fur craftsmanship, with distinct regional styles and techniques emerging across the Mongolian landscape.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppStyle.fur))),
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
                    'Fur Crafting Techniques',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Mongolian fur crafting involves a range of techniques, from the initial processing of hides to the intricate sewing and decorating of finished products. Traditional processing methods are employed to preserve the fur, keeping it soft, durable, and suitable for crafting. Artisans skillfully select and combine different types of fur to create garments and accessories that are both functional and aesthetically pleasing, often incorporating fur into designs that reflect Mongolian motifs and symbolism.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Fur in Traditional Mongolian Items',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Clothing:   Fur is a crucial material for traditional Mongolian clothing, including the Deel (a long, robe-like coat) and various types of hats and boots. These garments are designed for maximum warmth and are often embellished with fur trims and linings that showcase the natural beauty of the material.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ger Insulation:    In addition to clothing, fur is used to insulate traditional Mongolian gers (yurts), providing a layer of warmth that is essential for surviving the winter months. Fur coverings and rugs are common in Mongolian homes, serving both practical and decorative purposes.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Accessories and Decorative Items:   Mongolian artisans craft a wide range of accessories from fur, including bags, belts, and jewelry. Fur is also used in decorative items for the home, such as wall hangings and ceremonial objects, each piece reflecting the artisan`s skill and cultural heritage.',
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
                    'In contemporary Mongolia, fur continues to be valued for its warmth, durability, and aesthetic appeal. While modern synthetic materials offer alternatives, the unique qualities of natural fur make it irreplaceable for many Mongolians, especially those living in rural and nomadic communities. The global fashion industry`s interest in sustainable and ethically sourced materials has brought renewed attention to traditional Mongolian fur crafting. Mongolian artisans and designers are finding new markets for their work, blending traditional techniques with modern design principles to create products that appeal to a global audience.',
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
                    'Ethical and Environmental Considerations',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'The use of fur in crafting raises important ethical and environmental considerations. Mongolian traditions emphasize respect for nature and the sustainable use of resources, principles that continue to guide the country`s fur industry. Efforts to ensure ethical sourcing and processing practices are increasingly becoming a priority, reflecting a commitment to conservation and sustainable development.',
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
                    'Fur is more than a material in Mongolian crafting; it is a symbol of resilience, a testament to the ingenuity of Mongolian artisans, and a crucial element of cultural heritage. As Mongolia navigates the challenges of modernity and global integration, the tradition of fur crafting remains a vibrant and evolving testament to the enduring spirit of the Mongolian people and their deep-rooted connection to the land and its resources.',
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
                    onTap: () => Navigator.popAndPushNamed(context, '/wood'),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Text(
                            'Continue reading Wood',
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
