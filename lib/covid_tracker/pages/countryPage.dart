import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:living_in_pandemic/covid_tracker/pages/search.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class CountryPage extends StatefulWidget {
  static const routeName = "countryPage";

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countryData;
  _fetchCountryData() async {
    var response =
        await http.get("https://corona.lmao.ninja/v2/countries?sort=cases");
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    _fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Country Stats",
          style: TextStyle(fontFamily: "Lobster"),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Search(countryList: countryData));
              }),
        ],
      ),
      body: countryData == null
          ? Align(
              child: CircularProgressIndicator(), alignment: Alignment.center)
          : ListView.builder(
              itemCount: countryData == null ? 0 : countryData.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.all(10),
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[100],
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: countryData[index]["country"],
                            fontWeight: FontWeight.bold,
                          ),
                          Image.network(
                            countryData[index]["countryInfo"]["flag"],
                            height: 50,
                            width: 60,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "CONFIRMED:" +
                                    countryData[index]["cases"].toString(),
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              CustomText(
                                text: "ACTIVE:" +
                                    countryData[index]["active"].toString(),
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                              CustomText(
                                text: "RECOVERED:" +
                                    countryData[index]["recovered"].toString(),
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              CustomText(
                                text: "DEATHS:" +
                                    countryData[index]["deaths"].toString(),
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
    );
  }
}
