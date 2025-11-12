import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_projects1/Constant/Constant.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../Home_Screen/Main_Screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            //Read Quran
            PageViewModel(
              title: "Read Quran",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Customize your reading view, read in Multiple language, listen different audio",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                      ),
                    ),
                  ),
                ],
              ),
              image: Center(
                child: SizedBox(
                  height:
                      MediaQuery.of(context).size.height *
                      0.5, // upper half of screen
                  width: double.infinity,
                  child: Image.asset("assets/quran.png",fit:BoxFit.cover,),
                ),
              ),
            ),
            //Prayer Notified
            PageViewModel(
              title: "Prayer Alerts",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Choice your adhan , which prayer to be notified of and how often",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                      ),
                    ),
                  ),
                ],
              ),
              image: Center(
                child: SizedBox(
                  height:
                      MediaQuery.of(context).size.height *
                      0.5, // upper half of screen
                  width: double.infinity,
                  child: Image.asset("assets/prayer.png",fit: BoxFit.cover,),
                ),
              ),
            ),
            // Good Habits
            PageViewModel(
              title: "Build Better Habits",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Make Islamic practices a part of your daily life in a way that best suits your life",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                      ),
                    ),
                  ),
                ],
              ),
              image: Center(
                child: SizedBox(
                  height:
                      MediaQuery.of(context).size.height *
                      0.5, // upper half of screen
                  width: double.infinity,
                  child: Image.asset(
                    "assets/zakat.png",
                    fit: BoxFit.cover, // makes the image fill its box
                  ),
                ),
              ),
            ),
          ],
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, color: Colors.black),
          done: const Text(
            "Done",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          onDone: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            // activeColor: Theme.of(context).colorScheme.secondary,
            color: Constants.kPrimary,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
