import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: Image.asset("assets/intro2.png"),
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Your \n Bus",
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
                  "Check department times that\n align with your schedule, and\n compare ticket prices.",
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
