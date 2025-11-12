class Surah{
  int? number ;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  int? numberOfAyah;
  String? revelationType;

  Surah({
    this.name,
    this.englishName,
    this.number,
    this.numberOfAyah,
    this.revelationType,
    this.englishNameTranslation
});


  factory Surah.fromJson(Map<String,dynamic> json) {
return Surah(
  name: json['name'],
  number: json['number'],
  numberOfAyah: json['numberOfAyah'],
  englishName: json['englishName'],
   englishNameTranslation: json['englishNameTranslation'],
  revelationType: json['revelationType'],
);
  }
}