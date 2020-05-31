import 'package:flutter/material.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/dataSource.dart';
import 'package:living_in_pandemic/hompage.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class FinalPage extends StatelessWidget {
  static const routeName = "finalPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            color: Colors.orange[100],
            height: 100,
            child: CustomText(
              text:
                  "Form filled Sucesfully...Our team will reach out to you very soon. Stay Safe.",
              color: Colors.orange[800],
              fontWeight: FontWeight.bold,
              size: 16,
            ),
          ),
          MaterialButton(
            color: Colors.orange[100],
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
            child: CustomText(
              text: "Back to main page",
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
