import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 170,
            ),
            Center(
              child: Image.asset("assets/intro3.png"),
            ),
            SizedBox(height: 70),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy a\n comfortable ride",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Day One",
                    color: Color(0xFF3B3B5A),
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                Text(
                  "Sit back and enjoy your\n journey in a safe, reliable, and\n affordable price.",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Doppio One",
                    color: Color(0xFF3B3B5A),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
