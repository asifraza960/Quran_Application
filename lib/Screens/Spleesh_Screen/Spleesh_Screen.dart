import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects1/Screens/Home_Screen/Main_Screen.dart';
import 'package:flutter_projects1/Screens/Onboarding/Onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpleeshScreen extends StatefulWidget {
  const SpleeshScreen({super.key});

  @override
  State<SpleeshScreen> createState() => _SpleeshScreenState();
}

class _SpleeshScreenState extends State<SpleeshScreen> {
   bool alreadyUsed = false;
  void getData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    alreadyUsed  = prefs.getBool("alreadyUsed") ?? false;
  }

  @override
  void initState() {
    super.initState();
    getData();
    Timer(Duration(seconds: 3), () =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
              return alreadyUsed ? MainScreen() : OnboardingScreen();
            }
        ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Stack(
            children: [
              Center(
                child: Text("Islamic Soul",style: TextStyle(
                  color: Colors.black,
                  fontSize: 30
                ),
                ),
              ),
              Positioned(
                bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.network("assets/islamic.png")
              )
            ],
          ),
        )
    );
  }
}
