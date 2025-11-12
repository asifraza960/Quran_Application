import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects1/Api_Data/Api_Services/Api_Services.dart';
import '../../Api_Data/Model/Surah.dart';
import '../../CustomWidget/CustomSutaListTile.dart'; // fixed name spelling

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Quran"),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Text(
                  "Sajda",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "Surah", // Added missing tab title
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "Juz",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // TAB 1 — Sajda
              FutureBuilder<List<Surah>>(
                future: apiServices.getSurah(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No data found'));
                  } else {
                    List<Surah> surah = snapshot.data!;
                    return ListView.builder(
                      itemCount: surah.length,
                      itemBuilder: (context, index) => CustomSurahListTile(
                        surah: surah[index],
                        context: context,
                        onTap: () {  },
                      ),
                    );
                  }
                },
              ),

              // TAB 2 — Surah (placeholder)
              const Center(
                child: Text("It's rainy here"),
              ),

              // TAB 3 — Juz (placeholder)
              const Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
