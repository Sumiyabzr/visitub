import 'package:flutter/material.dart';

class NorthernSeeAll extends StatefulWidget {
  const NorthernSeeAll({super.key});

  @override
  State<NorthernSeeAll> createState() => _NorthernSeeAllState();
}

class _NorthernSeeAllState extends State<NorthernSeeAll> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Northern',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Northern-1.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              // ITEM 8 END --------------------------------------------------------------------------------------------
              SizedBox(height: 10),
              // ITEM 9 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Northern-2.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
              SizedBox(height: 10),
              // ITEM 8 -------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://192.168.1.83:8000/asset/Dest/Northern-8.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.width * 0.44,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
