import 'package:flutter/material.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/dataSource.dart';
import 'package:living_in_pandemic/widgets/about.dart';
import 'package:living_in_pandemic/widgets/categories.dart';
import 'package:living_in_pandemic/widgets/customText.dart';
import 'package:living_in_pandemic/widgets/economy.dart';
import 'package:living_in_pandemic/widgets/mentalhealth.dart';
import 'package:living_in_pandemic/widgets/prevention.dart';

import 'Rescue/rescue_mainPage.dart';
import 'covid_tracker/mainPage.dart';

class HomePage extends StatelessWidget {
  static const routeName = "homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Living in Pandemic",
          style: TextStyle(fontFamily: "Lobster"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, About.routeName);
            },
          ),
        ],
      ),
      body: MainPage(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: null,
              accountEmail: null,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/logo.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RescueMainPage.routeName);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: primaryBlack,
                  child: Icon(Icons.place),
                ),
                title: CustomText(
                    text: "Rescue Registration",
                    size: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Categories.routeName);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: primaryBlack,
                  child: Icon(Icons.video_call),
                ),
                title: CustomText(
                    text: "Learining and Entertainment",
                    size: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MentalHealth.routeName);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: primaryBlack,
                  child: Icon(Icons.dashboard),
                ),
                title: CustomText(
                    text:
                        "Psychological and mental effect of covid 19 and Isolation",
                    size: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Economy.routeName);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: primaryBlack,
                  child: Icon(Icons.equalizer),
                ),
                title: CustomText(
                    text: "Effect of Covid 19 in Economy and Lifestyle",
                    size: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Prevention.routeName);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: primaryBlack,
                  child: Icon(Icons.format_color_fill),
                ),
                title: CustomText(
                    text: "Ways of Prevention from Covid 19",
                    size: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, About.routeName);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: primaryBlack,
                  child: Icon(Icons.info),
                ),
                title: CustomText(
                    text: "About Project",
                    size: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
