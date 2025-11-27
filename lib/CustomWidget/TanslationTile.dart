import 'package:flutter/material.dart';
import 'package:flutter_projects1/Api_Data/Model/Surah_translation.dart';
import 'package:flutter_projects1/Constant/Constant.dart';

class TranslationTile extends StatefulWidget {
  final int index;
  final SurahTranslation surahTranslation;

   const TranslationTile({
    required this.index,
    required this.surahTranslation,
  });

  @override
  State<TranslationTile> createState() => _TranslationTileState();
}

class _TranslationTileState extends State<TranslationTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(blurRadius: 1),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Constants.kPrimary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Text(
                      textAlign: TextAlign.end,
                      widget.surahTranslation.aya ?? '',
                      style: const TextStyle(

                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.end,
                    widget.surahTranslation.arabic_text ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.surahTranslation.translation ?? '',
                    style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
