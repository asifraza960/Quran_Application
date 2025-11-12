class AyahofTheday{
final String? arText;
final String? enTran;
final String? surEnName;
final String? englishNameTranslation;
final String ? juz;

AyahofTheday({this.arText, this.enTran, this.surEnName, this.englishNameTranslation, this.juz});



factory  AyahofTheday.fromJSON(Map<String,dynamic> json) {
return AyahofTheday(
   arText : json['data'][0]['text'],
   enTran : json['data'][2]['text'],
   surEnName : json['data'][2]['surah']['englishName'],
   englishNameTranslation : json['data'][2]['surah']['englishNameTranslation'],
   juz : json['data'][2]['surah']['juz'],
);
}
}
