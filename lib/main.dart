import 'package:flutter/material.dart';
import 'package:living_in_pandemic/Rescue/Screens/final_page.dart';
import 'package:living_in_pandemic/Rescue/Screens/registration_form.dart';
import 'package:living_in_pandemic/Rescue/Screens/signup_screen.dart';
import 'package:living_in_pandemic/Rescue/Screens/welcome_Screen.dart';
import 'package:living_in_pandemic/Rescue/rescue_mainPage.dart';
import 'package:living_in_pandemic/covid_tracker/pages/countryPage.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/dataSource.dart';
import 'package:living_in_pandemic/widgets/about.dart';
import 'package:living_in_pandemic/widgets/categories.dart';
import 'package:living_in_pandemic/widgets/economy.dart';
import 'package:living_in_pandemic/widgets/mentalhealth.dart';
import 'package:living_in_pandemic/widgets/prevention.dart';

import 'covid_tracker/pages/faqs.dart';
import 'hompage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        FAQS.routeName: (context) => FAQS(),
        CountryPage.routeName: (context) => CountryPage(),
        RescueMainPage.routeName: (context) => RescueMainPage(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        SignUpScreen.routeName: (conetxt) => SignUpScreen(),
        RegistrationForm.routeName: (conetext) => RegistrationForm(),
        FinalPage.routeName: (context) => FinalPage(),
        About.routeName: (context) => About(),
        Categories.routeName: (context) => Categories(),
        MentalHealth.routeName:(context)=>MentalHealth(),
        Economy.routeName:(context)=>Economy(),
        Prevention.routeName:(context)=>Prevention(),
      },
      theme: ThemeData(primaryColor: primaryBlack, fontFamily: "Circular"),
    );
  }
}
