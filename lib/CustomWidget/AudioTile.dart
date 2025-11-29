import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects1/Constant/Constant.dart';

Widget AudioTile({
  required String? surahName,
  required String? totalAya,
  required  number,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black45,
            offset: Offset(0,5)
          )],
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black
              ),
              child: Text((number).toString(),style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),

            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  surahName!,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 3),
                Text("Total Aya : ${totalAya}",style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                Spacer(),
                Icon(Icons.play_arrow,color: Constants.kPrimary,)

              ],
            )
          ],
        ),
      ),
    ),
  );
}







