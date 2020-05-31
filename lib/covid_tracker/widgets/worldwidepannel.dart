import 'package:flutter/material.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class WorldWidePannel extends StatelessWidget {
  final Map worldData;
  WorldWidePannel({this.worldData});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2),
        children: [
          StatusPannel(
            title: "CONFIRMED",
            count:worldData["cases"].toString(),
            pannelColor: Colors.grey[400],
            textColor: Colors.grey[900],
          ),
           StatusPannel(
            title: "ACTIVE",
            count:worldData["active"].toString(),
            pannelColor: Colors.blue[100],
            textColor: Colors.blue[900],
          ),
           StatusPannel(
            title: "RECOVERED",
            count:worldData["recovered"].toString(),
            pannelColor: Colors.green[100],
            textColor: Colors.green,
          ),
           StatusPannel(
            title: "DEATHS",
            count:worldData["deaths"].toString(),
            pannelColor: Colors.red[100],
            textColor: Colors.red,
          ),
         
        ],
      ),
    );
  }
}

class StatusPannel extends StatelessWidget {

  final String title;
  final String count;
  final Color pannelColor;
  final Color textColor;

  StatusPannel({this.title, this.count, this.pannelColor, this.textColor});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      color: pannelColor,
      height: 80,
      width: width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: title,
            fontWeight: FontWeight.bold,
            size: 16,
            color: textColor,
          ),
          CustomText(
            text: count,
            fontWeight: FontWeight.bold,
            size: 16,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
