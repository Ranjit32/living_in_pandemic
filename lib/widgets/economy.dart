import 'package:flutter/material.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class Economy extends StatelessWidget {
  static const routeName = "economy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Effect in Economy and LifeStyle",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text: "Effects of corona virus",
              size: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus. ",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment.  Older people, and those with underlying medical problems like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to develop serious illness.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "The best way to prevent and slow down transmission is be well informed about the COVID-19 virus, the disease it causes and how it spreads. Protect yourself and others from infection by washing your hands or using an alcohol based rub frequently and not touching your face. ",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "The COVID-19 virus spreads primarily through droplets of saliva or discharge from the nose when an infected person coughs or sneezes, so it’s important that you also practice respiratory etiquette (for example, by coughing into a flexed elbow).",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text: "Economy crises on corona virus",
              size: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  'The Organization for Economic Cooperation and Development said its indicators produced the strongest warning on record that most major economies had entered a “sharp slowdown.” The World Trade Organization, for its part, forecast that nearly all regions of the world would suffer double-digit declines in trade this year, with North American and Asian exporters hit hardest.',
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  'Many governments have effectively frozen social and economic activity in all or parts of their countries to contain the outbreak, shuttering nonessential businesses and ordering residents to stay at home for weeks or months. Billions of people worldwide remain under some type of lockdown. Major industries, especially airlines and other travel-related sectors, are on the brink of bankruptcy. The hope is that economies can power down without causing extreme disruptions, such as widespread business failures or joblessness, and then quickly get back up to speed after the pandemic abates.',
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text: "Socio-economic impact of COVID-19",
              size: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "The UN’s Framework for the Immediate Socio-Economic Response to the COVID 19 Crisis warns that “The COVID-19 pandemic is far more than a health crisis: it is affecting societies and economies at their core. While the impact of the pandemic will vary from country to country, it will most likely increase poverty and inequalities at a global scale, making achievement of SDGs even more urgent.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "Assessing the impacts of the COVID-19 crisis on societies, economies and vulnerable groups is fundamental to inform and tailor the responses of governments and partners to recover from the crisis and ensure that no one is left behind in this effort.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  'Without urgent socio-economic responses, global suffering will escalate, jeopardizing lives and livelihoods for years to come. Immediate development responses in this crisis must be undertaken with an eye to the future. Development trajectories in the long-term will be affected by the choices countries make now and the support they receive.”',
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "The United Nations has mobilized the full capacity of the UN system through its 131 country teams serving 162 countries and territories, to support national authorities in developing public health preparedness and response plans to the COVID-19 crisis.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "Over the next 12 to 18 months, the socio-economic response will be one of one of three critical components of the UN’s COVID-19 response, alongside the health response, led by WHO, and the Global Humanitarian Response Plan.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "As the technical lead for the socio-economic response, UNDP and its country offices worldwide are working under the leadership of the UN Resident Coordinators, and in close collaboration with specialized UN agencies, UN Regional Economic Commissions and IFIs, to assess the socio-economic impacts of the COVID-19 pandemic on economies and communities. The assessment reports available on this site contain the preliminary findings of regional and country analyses. ",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text: "Effect of corona virus in lifestyle",
              size: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "The new coronavirus pandemic is upending life as we know it.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "More than one-quarter of the world's 7.8 billion people are now largely confined to their homes, as governments step up curbs on movement and social contact in a bid to contain the virus.",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              text:
                  "In many parts of the world, borders are closed, airports, hotels and businesses shut, and school cancelled. These unprecedented measures are tearing at the social fabric of some societies and disrupting many economies, resulting in mass job losses and raising the spectra of widespread hunger. Much remains uncertain, but analysts say the pandemic and the measures we are taking to save ourselves could permanently change the ways in which we live, work, worship and play in the future. Envisioning that post-pandemic world is key in ensuring we change for the better, not the worse",
              size: 18,
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
