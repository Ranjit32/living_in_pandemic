import 'package:flutter/material.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class MostAffectedCountries extends StatelessWidget {
  final List countryData;
  MostAffectedCountries({this.countryData});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Image.network(
                countryData[index]["countryInfo"]["flag"],
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: countryData[index]["country"],
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                width: 10,
              ),
              CustomText(
                  text: "Deaths:" + countryData[index]["deaths"].toString(),
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ],
          ),
        );
      },
    );
  }
}
