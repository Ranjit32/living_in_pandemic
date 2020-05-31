import 'package:flutter/material.dart';
import 'package:living_in_pandemic/covid_tracker/pages/faqs.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/dataSource.dart';
import 'package:living_in_pandemic/widgets/customText.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, FAQS.routeName);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "FAQS",
                    size: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              launch(
                  "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/donate");
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "DONATE",
                    size: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              launch(
                  "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters");
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "MYTH BUSTERS",
                    size: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
