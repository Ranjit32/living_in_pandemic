import 'package:flutter/material.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class Search extends SearchDelegate {
  final List countryList;
  Search({this.countryList});
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? countryList
        : countryList
            .where((element) =>
                element["country"].toString().toLowerCase().startsWith(query))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      
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
                  text: suggestionList[index]["country"],
                  fontWeight: FontWeight.bold,
                ),
                Image.network(
                  suggestionList[index]["countryInfo"]["flag"],
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
                          suggestionList[index]["cases"].toString(),
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: "ACTIVE:" +
                          suggestionList[index]["active"].toString(),
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    CustomText(
                      text: "RECOVERED:" +
                          suggestionList[index]["recovered"].toString(),
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    CustomText(
                      text: "DEATHS:" +
                          suggestionList[index]["deaths"].toString(),
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
    });
  }
}
