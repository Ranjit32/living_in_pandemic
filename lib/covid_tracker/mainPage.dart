import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:living_in_pandemic/covid_tracker/pages/countryPage.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/infoPannel.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/mostAffectedCountries.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/worldwidepannel.dart';
import 'package:living_in_pandemic/widgets/customText.dart';
import 'package:http/http.dart' as http;
import 'widgets/dataSource.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map worldData;
  _fetchWorldData() async {
    var response = await http.get("https://corona.lmao.ninja/v2/all");
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  List countryData;
  _fetchCountryData() async {
    var response = await http.get("https://corona.lmao.ninja/v2/countries?sort=cases");
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    _fetchWorldData();
    _fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            color: Colors.orange[100],
            height: 100,
            child: CustomText(
              text: DataSource.quote,
              color: Colors.orange[800],
              fontWeight: FontWeight.bold,
              size: 16,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Worldwide",
                  size: 22,
                  fontWeight: FontWeight.bold,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, CountryPage.routeName);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: primaryBlack,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CustomText(
                      text: "Regional",
                      size: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          worldData == null
              ? Align(
                  child: CircularProgressIndicator(),
                  alignment: Alignment.center,
                )
              : WorldWidePannel(
                  worldData: worldData,
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: CustomText(
              text: "Most Affected Countries",
              size: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          countryData == null
              ? Align(
                  child: CircularProgressIndicator(),
                  alignment: Alignment.center,
                )
              : MostAffectedCountries(
                  countryData: countryData,
                ),
          SizedBox(height: 20),
          InfoPannel(),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CustomText(
              text: "WE ARE TOGETHER IN THIS FIGHT",
              size: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
