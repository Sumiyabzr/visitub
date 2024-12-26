import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visitub/style/app_style.dart';

class Calligraphy extends StatefulWidget {
  const Calligraphy({super.key});

  @override
  State<Calligraphy> createState() => _CalligraphyState();
}

class _CalligraphyState extends State<Calligraphy> {
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
                      image: AssetImage(AppStyle.calligraphy))),
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
                    'Mongolian calligraphy is a unique and intricate art form that represents the rich cultural heritage and historical depth of Mongolia. This art form transcends mere writing, blending linguistic elements with aesthetic expression to create visually striking compositions. Mongolian calligraphy has its roots deeply embedded in the country`s nomadic traditions, and its evolution is closely linked to the historical development of the Mongolian script.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ).animate().fade(delay: 800.ms),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Historical Context',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'The traditional Mongolian script was created in the early 13th century, attributed to the reign of Genghis Khan. It was derived from the ancient Uyghur alphabet, intended to fulfill the administrative needs of the vast Mongol Empire and to propagate written culture among the Mongols. The script is unique for its vertical alignment, with letters connected from top to bottom and columns arranged from left to right. This vertical orientation is believed to be influenced by the Mongols` practice of writing on bamboo or wooden strips during their nomadic movements.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppStyle.calligraphy2))),
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
                    'Artistic Features',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Mongolian calligraphy is characterized by its flowing lines and elegant curves, with each stroke and character conveying both meaning and beauty. The art requires a high degree of skill and precision, as the calligrapher must maintain consistent pressure and speed to achieve the desired thickness and smoothness of lines. The aesthetic appeal of Mongolian calligraphy lies not only in the legibility of the text but also in the visual harmony and rhythm of the script. Calligraphers often employ traditional tools, including brushes made from various animal hairs and ink prepared from soot and gelatin. The choice of paper or material also plays a significant role in the calligraphic process, with handmade papers being preferred for their texture and absorbency.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppStyle.calligraphy3))),
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
                    'Cultural Significance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'Mongolian calligraphy is more than just a form of artistic expression; it is a symbol of national identity and pride. It embodies the Mongolian people`s reverence for their language and history, serving as a bridge connecting the past with the present. The art form is also seen as a way to cultivate discipline, patience, and concentration, reflecting the philosophical and spiritual dimensions of Mongolian culture. In recognition of its cultural value and to preserve this unique form of expression, UNESCO inscribed Mongolian calligraphy on the Representative List of the Intangible Cultural Heritage of Humanity in 2013. This acknowledgment highlights the global significance of Mongolian calligraphy and the importance of safeguarding such traditions for future generations.',
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
                    'Contemporary Revival',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  Text(
                    'In recent years, there has been a resurgence of interest in Mongolian calligraphy among both artists and the general public. Workshops, exhibitions, and competitions are increasingly common, aiming to revive and promote the art among younger Mongolians. Modern calligraphers are also experimenting with new mediums and techniques, incorporating Mongolian calligraphy into graphic design, visual art, and even digital formats. This revival is not only about preserving an ancient art form but also about exploring its potential to express contemporary ideas and emotions. As Mongolian calligraphy continues to evolve, it remains a vibrant testament to the enduring spirit and cultural richness of the Mongolian people. In summary, Mongolian calligraphy is an art form steeped in history, embodying the elegance of the Mongolian script and the cultural depth of the nation. It serves as a testament to the Mongolian people`s respect for their linguistic heritage, their artistic sensibilities, and their ongoing efforts to keep their cultural traditions alive in the modern world.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
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
