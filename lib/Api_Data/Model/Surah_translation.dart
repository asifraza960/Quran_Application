class SuraTranslationList {
  final List<SurahTranslation> translationlist;

  SuraTranslationList({required this.translationlist});

  factory SuraTranslationList.fromJson(Map<String, dynamic> map) {
    Iterable translation = map['result'];

    List<SurahTranslation> list =
    translation.map((e) => SurahTranslation.fromJson(e)).toList();

    print(list.length);
    return SuraTranslationList(translationlist: list);
  }
}

class SurahTranslation {
  String? sura;
  String? aya;
  String? arabic_text;
  String? translation;

  SurahTranslation({
    this.sura,
    this.aya,
    this.arabic_text,
    this.translation,
  });

  factory SurahTranslation.fromJson(Map<String, dynamic> json) {
    return SurahTranslation(
      sura: json['sura'],
      aya: json['aya'],
      arabic_text: json['arabic_text'],
      translation: json['translation'],
    );
  }
}
