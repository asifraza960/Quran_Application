class SurahTranslation{

  String? surah;
  String? aya;
  String? arabic_text;
  String? translation;



  SurahTranslation({
    this.surah,this.aya,this.arabic_text,this.translation
});

  factory SurahTranslation.fronJson(Map<String,dynamic> json){
    return SurahTranslation(
      surah: json['surah'],
      aya: json['aya'],
      arabic_text: json['arabic_text'],
      translation: json['translation']

    );
  }
}