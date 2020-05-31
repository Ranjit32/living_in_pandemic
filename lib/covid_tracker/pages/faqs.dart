import 'package:flutter/material.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/dataSource.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class FAQS extends StatelessWidget {
  static const routeName ="faqs";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FAQS",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: CustomText(
                text: DataSource.questionAnswers[index]["question"],
                fontWeight: FontWeight.bold,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: DataSource.questionAnswers[index]["answer"],
                  ),
                )
              ],
            );
          }),
    );
  }
}
