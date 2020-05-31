import 'package:flutter/material.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class About extends StatelessWidget {
  static const routeName = "about";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Project",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text: "THE ISOLATION SOLUTION",
              size: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "Around the last month of 2019, a flu-like disease was seen in Wuhan, China. It caused a severe respiratory problem in the infected ones leading even to the death. COVID19 is an infectious disease caused by a virus called SARS-CoV-2. At the moment, the disease has spread all over the world as a global pandemic affecting the life of millions of people from around the globe. Billions of people are forced to stay in their home. This disease spread from one person to another real quick and easy. The most common means of transmission is physical contact. So, to avoid the crowds, lockdown has been imposed in most of the countries around the globe. In Nepal, lockdown has been in practice since the last two months and is still on. In such conditions, People are forced to stay in their home with almost zero social contact. Social distancing and lockdown is the only way to prevent the rapid spread of viruses and prevent thousands of lives.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "But lockdown, isolation and social distancing have invited some problems in the country, especially in the developing and underdeveloped country. Let me take an example of my own country Nepal. In Nepal, many people work as labour on a daily wage basis. They don’t have a definite salary. Such people are highly hit by the lockdown. Also, many nepali people are in foreign lands for employment opportunities. Many people are living away from their families in villages for employment opportunities in cities. As a result of lockdown, they have become jobless. They are unable to live in the city because of no regular source of income. They can’t even return to their home in the village as the districts have been sealed and public vehicles can’t operate during lockdown. They are compelled to live with starvation. So, we can conclude that people living in poverty are highly affected by lockdown. This soon may lead to death due to starvation.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "This is where our project comes into help. People stuck in different parts of the country can simply fill the form and state their whereabouts. So, such needy people can easily be identified and can be brought back home by the concerned authority. People are walking thousands of kilometers to reach their home. Some even have died on the way. The information of needy people can simply be submitted to the related authorities via this website/app so the helping hands can easily reach them. This will surely make a small contribution to minimize the effect of lockdown for the people living with poverty...",
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
