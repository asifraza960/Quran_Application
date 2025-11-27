
import 'package:flutter/material.dart';
import '../Api_Data/Model/Surah.dart';

Widget CustomSurahListTile({
  required Surah surah,
  required BuildContext context,
  required VoidCallback onTap,
}) {
  // Get screen width and height
  final size = MediaQuery.of(context).size;
  final width = size.width;
  final height = size.height;
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        children:[
          Row(
          children: [
            // Circle for Surah number
            Container(
              alignment: Alignment.center,
              height: width * 0.10, // 12% of screen width
              width: width * 0.10,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Text(
                surah.number.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.045, // responsive font
                ),
              ),
            ),

            SizedBox(width: width * 0.04),

            // Surah Name & Translation
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    surah.englishName ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.045,
                    ),
                  ),
                  SizedBox(height: height * 0.003),
                  Text(
                    surah.englishNameTranslation ?? '',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: width * 0.035,
                    ),
                  ),
                ],
              ),
            ),

            // Arabic Name
            Text(
              surah.name ?? '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.06,
              ),
            ),
          ],
        ),
    ]
      ),
    ),
  );
}
