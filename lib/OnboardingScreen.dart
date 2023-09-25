import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uplinee/Auth/Login.dart';
import 'package:uplinee/IntroScreens/Intro1.dart';
import 'package:uplinee/IntroScreens/intro2.dart';
import 'package:uplinee/IntroScreens/intro3.dart';
import 'package:uplinee/main.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();

  //keep track if were are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: [
            Intro1(),
            Intro2(),
            Intro3(),
          ],
        ),

        //dot indicators
        Container(
          alignment: Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //skip
              GestureDetector(
                  child: Text("Skip"),
                  onTap: () {
                    _controller.jumpToPage(2);
                  }),

              //dot indicators
              SmoothPageIndicator(
                effect: ScrollingDotsEffect(
                    activeDotColor: Color(0xFFDA6969), dotColor: Colors.grey),
                count: 3,
                controller: _controller,
              ),

              //next done
              onLastPage
                  ? GestureDetector(
                      child: Text("Done"),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      })
                  : GestureDetector(
                      child: Text("Next"),
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      })
            ],
          ),
        ),
      ]),
    );
  }
}
