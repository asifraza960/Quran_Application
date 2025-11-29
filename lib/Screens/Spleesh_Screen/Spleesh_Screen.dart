import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    Timer(Duration(seconds: 3),(){
      Get.offNamed("/login");
    }
    );



  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.white,
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
