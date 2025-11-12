import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects1/Api_Data/Api_Services/Api_Services.dart';
import 'package:flutter_projects1/Constant/Constant.dart';

import '../../Api_Data/Model/Surah_translation.dart';
import '../../CustomWidget/CustomSutaListTile.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  static const String id = "surahDetails_screen";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  ApiServices _apiServices = ApiServices();
  @override
  Widget build(BuildContext context) {






    return SafeArea(child: Scaffold(
      body: FutureBuilder(
          future: _apiServices.getTranslation(Constants.SurahIndex),
          builder: (BuildContext context, AsyncSnapshot<SuraTranslationonList> snapshot){
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No data found'));
            }else {
              return ListView.builder(
                itemCount: snapshot.data!.translationlist.length,
                itemBuilder: (context, index) => CustomSurahListTile(
                  surah: surah[index],
                  context: context,
                  onTap: () {  },
                ),
              );
            }
          }

      ),
    ));
  }
}
