import 'dart:convert';
import 'dart:math';

import 'package:flutter_projects1/Api_Data/Model/Ayah_of_TheDay.dart';
import 'package:http/http.dart' as http;

import '../Model/Surah.dart';
import '../Model/Surah_translation.dart';

class ApiServices {

  final endpointUrl = "http://api.alquran.cloud/v1/surah";
  List<Surah> list =[];


  //  get aya of any Surah rendom  and desplay on the  home screen
  Future<AyahofTheday> getAyahOfTheDay() async {
    String Url =
        "http://api.alquran.cloud/v1/ayah/${random(1, 6237)}/editions/quran-uthmani,en.asad,en.pickthall ";
    final response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      return AyahofTheday.fromJSON(json.decode(response.body));
    } else {
      print("Failed to load");
      throw Exception("Failed to load post ");
    }
  }


  //  get Surah and desplay on the Screen
  Future <SuraTranslationonList> getTranslation(int index)async{
    final rul = "https://quranenc.com/api/v1/translation/aya/urdu_junagarhi/$index ";
    var res = await http.get(Uri.parse(rul));
    return SuraTranslationonList.fromJson(jsonDecode(res.body));


  }



  //  get Surah from Api
  Future<List<Surah>> getSurah() async {
    List<Surah> list = []; // Always start with an empty list

    final res = await http.get(Uri.parse(endpointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      json['data'].forEach((element) {
        list.add(Surah.fromJson(element));
      });

      print("Total Surahs Loaded: ${list.length}");
      return list; // ✅ Return after processing
    } else {
      print("Cannot get the Surah, status code: ${res.statusCode}");
      return []; // ✅ Always return something
    }
  }



  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }
}
