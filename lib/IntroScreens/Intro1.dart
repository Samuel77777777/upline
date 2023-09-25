import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset("assets/intro1.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book a bus\n on the spot",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Day One",
                    color: Color(0xFF3B3B5A),
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Only book a ride when you\n need it - Your seat is\n guaranteed",
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
