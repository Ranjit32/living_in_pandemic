import 'package:flutter/material.dart';
import 'package:living_in_pandemic/Rescue/Screens/welcome_Screen.dart';

class RescueMainPage extends StatelessWidget {
  static const routeName = "rescueMainPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rescue Registration",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: WelcomeScreen(),
    );
  }
}
