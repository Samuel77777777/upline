import 'package:flutter/material.dart';
import 'package:uplinee/OnboardingScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFDA6969),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/welcome.png",
              height: 350,
            ),

            //text in the welcome screen
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "We're\n going\n on a trp",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Day One",
                  color: Color.fromARGB(255, 240, 236, 236),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 44, top: 15),
              child: Text(
                "Are you in?",
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 236, 236),
                  fontFamily: "Day One",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboarding()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 60), // Set the button size
                    primary: Colors.white, // Background color
                    onPrimary: Colors.black, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
