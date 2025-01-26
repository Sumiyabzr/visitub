import 'package:flutter/material.dart';
import 'package:visitub/style/app_style.dart';

class PersonalDocument extends StatefulWidget {
  const PersonalDocument({super.key});

  @override
  State<PersonalDocument> createState() => _PersonalDocumentState();
}

class _PersonalDocumentState extends State<PersonalDocument> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage(AppStyle.documents),
                      fit: BoxFit.cover)),
              width: size.width,
              height: size.width * 0.8,
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Passport and Visa ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Text(
                        'Ensure your passport is valid for at least six months beyond your intended departure date and that you have the necessary visa.',
                        textAlign: TextAlign.justify,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Copies of Important Documents',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Text(
                        'Photocopies and digital copies of your passport, visa, travel insurance, and other important documents. Better safe than sorry.',
                        textAlign: TextAlign.justify,
                      )),
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
