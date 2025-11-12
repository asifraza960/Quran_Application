class SuraTranslationonList{
  final List<SurahTranslation> translationlist ;
  SuraTranslationonList ({required this.translationlist});


  factory SuraTranslationonList.fromJson(Map<String,dynamic> map) {
    Iterable translation  =map['result'];

    List<SurahTranslation> list = translation.map((e) => SurahTranslation.fronJson(e)).toList();
    print(list.length);
    return SuraTranslationonList(translationlist: list);
  }
}

class SurahTranslation{

  String? sura;
  String? aya;
  String? arabic_text;
  String? translation;


  SurahTranslation({
    this.sura,this.aya,this.arabic_text,this.translation
});

  factory SurahTranslation.fronJson(Map<String,dynamic> json){
    return SurahTranslation(
      sura: json['sura'],
      aya: json['aya'],
      arabic_text: json['arabic_text'],
      translation: json['translation']

    );
  }
}
