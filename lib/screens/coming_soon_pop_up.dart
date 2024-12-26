import 'package:flutter/material.dart';

class Coming_Soon extends StatefulWidget {
  const Coming_Soon({super.key});

  @override
  State<Coming_Soon> createState() => _Coming_SoonState();
}

class _Coming_SoonState extends State<Coming_Soon> {
  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white
          ),
          width: double.maxFinite,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                  decoration: BoxDecoration(
                  ),
                  child: Center(child: Image.asset('assets/images/coming.gif'))
                ),
                SizedBox(height: 10,),

     
                SizedBox(height: 25,),
              
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(onPressed: () => Navigator.pop(context), 
                  child: Text('Close', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}