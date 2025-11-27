import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects1/Api_Data/Api_Services/Api_Services.dart';
import 'package:flutter_projects1/Api_Data/Model/juz.dart';
import 'package:flutter_projects1/Constant/Constant.dart';
import 'package:flutter_projects1/CustomWidget/juz_CustomTile.dart';

class JuzScreen extends StatelessWidget {
  static const String id = "juz_screen";

  @override
  Widget build(BuildContext context) {
    ApiServices apiServices = ApiServices();

    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<JuzModel>(
          future: apiServices.getJuzz(Constants.juzIndex!),
          builder: (context, AsyncSnapshot<JuzModel> snapshot) {

            // LOADING STATE
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            // DATA LOADED
            else if (snapshot.hasData) {
              print("${snapshot.data!.juzAyahs.length} length");

              return ListView.builder(
                itemCount: snapshot.data!.juzAyahs.length,
                itemBuilder: (context, index) {
                  return JuzCustomtile(
                    list: snapshot.data!.juzAyahs,
                    index: index,
                  );
                },
              );
            }

            // ERROR / EMPTY STATE
            return Center(
              child: Text("Something went wrong!"),
            );
          },
        ),
      ),
    );
  }
}
