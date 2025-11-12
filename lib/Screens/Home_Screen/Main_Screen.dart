
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects1/Constant/Constant.dart';
import 'package:flutter_projects1/Screens/Audio_Screen/Audio_Screen.dart';
import 'package:flutter_projects1/Screens/Home_Screen/HomeScreen.dart';
import 'package:flutter_projects1/Screens/Prayer_Screen/Prayer_screen.dart';
import 'package:flutter_projects1/Screens/Quran_Screen/Quran_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override


  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {
  int selectindex  = 0;
  final List<Widget> _widgetList = [Homescreen(),QuranScreen(),AudioScreen(),PrayerScreen()];
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[selectindex],
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Image.asset("assets/home.png"), title: 'Home'),
            TabItem(icon: Image.asset("assets/holyQuran.png"), title: 'Quran'),
            TabItem(icon: Image.asset("assets/audio.png"), title: 'Audio'),
            TabItem(icon: Image.asset("assets/mosque.png"), title: 'Prayer'),

          ],
          initialActiveIndex: 0,
          onTap: UpdatedIndex,
            backgroundColor: Constants.kPrimary,
        )
    );
  }
  void UpdatedIndex(index){
    setState(() {
      selectindex = index;
    });
  }
}
