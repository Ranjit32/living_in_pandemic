import 'package:flutter/material.dart';
import 'package:living_in_pandemic/widgets/customText.dart';
import 'package:url_launcher/url_launcher.dart';

class Categories extends StatelessWidget {
  static const routeName = "categories";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Learning and Entertainment",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              color: Colors.orange[100],
              height: 100,
              child: CustomText(
                text:
                    "Keep yourself Entertained and productive during this Pandemiic.. Follow the below links.. ",
                color: Colors.orange[800],
                fontWeight: FontWeight.bold,
                size: 16,
              ),
            ),
            SizedBox(height: 15),
            ExpansionTile(
              title: CustomText(
                text: "Science",
                size: 18,
                fontWeight: FontWeight.bold,
              ),
              children: [
                GestureDetector(
                  onTap: () {
                    launch(
                        "https://www.youtube.com/channel/UCLA_DiR1FfKNvjuUpBHmylQ");
                  },
                  child: CustomText(
                    text: "NASA Youtube channel",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch(
                      "https://www.nasa.gov/",
                    );
                  },
                  child: CustomText(
                    text: "NASA Official Webiste",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch("https://www.youtube.com/user/Kurzgesagt");
                  },
                  child: CustomText(
                    text: "Kurzgesagt in a Nutshell",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch("http://www.esa.int/");
                  },
                  child: CustomText(
                    text: "European Space Agency Official Website",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch("https://global.jaxa.jp/");
                  },
                  child: CustomText(
                    text: "JAXA Official Website",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            SizedBox(height: 15),
            ExpansionTile(
              title: CustomText(
                text: "Education",
                size: 18,
                fontWeight: FontWeight.bold,
              ),
              children: [
                GestureDetector(
                  onTap: () {
                    launch("https://www.khanacademy.org//");
                  },
                  child: CustomText(
                    text: "Khan Academy",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch(
                        "https://www.youtube.com/channel/UC0cd_-e49hZpWLH3UIwoWRA");
                  },
                  child: CustomText(
                    text: "Professor Dave Expalins",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch("https://www.youtube.com/user/MITNewsOffice");
                  },
                  child: CustomText(
                    text: "MIT Youtube Channel",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            SizedBox(height: 15),
            ExpansionTile(
              title: CustomText(
                text: "Sports",
                size: 18,
                fontWeight: FontWeight.bold,
              ),
              children: [
                GestureDetector(
                  onTap: () {
                    launch("https://www.espn.in/");
                  },
                  child: CustomText(
                    text: "ESPN Official Website",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch("https://www.goal.com/en-in");
                  },
                  child: CustomText(
                    text: "GOAL Official Website",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch("https://www.icc-cricket.com/");
                  },
                  child: CustomText(
                    text: "ICC Official Website",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            SizedBox(height: 15),
            ExpansionTile(
              title: CustomText(
                text: "Arts",
                size: 18,
                fontWeight: FontWeight.bold,
              ),
              children: [
                GestureDetector(
                  onTap: () {
                    launch("https://drawabox.com/");
                  },
                  child: CustomText(
                    text: "DrawBox, free art leaning platform",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    launch("https://www.proko.com/");
                  },
                  child: CustomText(
                    text: "Porko, free art learning platform",
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
