import 'package:flutter/material.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class MentalHealth extends StatelessWidget {
  static const routeName = "mentalhealth";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Psychological and Mental Effect",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "Coronavirus disease (COVID19), a deadly pandemic has taken over the globe and killed hundreds of thousands of people in 2020. Millions of people have been infected with this disease. There is no vaccine or medicine discovered till the date to cure or prevent the spread of this deadly pandemic. ",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "Recently, coronavirus is everywhere. The first page of every newspaper has the news about coronavirus. TV and radio are constantly giving the news on the effects and deaths due to coronavirus. Social media sites are crowded with lots of news about coronavirus. Many fake information are circulating around the world via social media sites. Such news about coronavirus has directly affected people mentally and psychologically.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "If this continues, great effect can be seen soon in the psychology of individuals. Coronavirus is negatively affecting our prospective and psychology. Recent news about hatred towards people from other nations can be a great example of it.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "The only way to prevent yourself from coronavirus is social distancing and isolation.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: '“STAY HOME STAY SAFE”',
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "Isolation and social distancing might be a good way to prevent yourself from the virus. But they come with lots of other effects. Many impacts have been seen in the physical, mental as well as social behaviour of an individual as a result of isolation. Social distancing and isolation is not a new term for some people. Astronauts, researchers and other officials of NASA are trained to live in such situations. NASA even conducts research on the effects of isolation on humans with astronauts at ISS. But for the common people, social distancing and isolation is a whole new term and living with it might be even worse.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "Anecdotal and empirical findings collected in space and other extreme environments continue to highlight the potential for psychological symptoms and conditions to degrade crew performance, increase conflict, and jeopardize mission success. Indeed, ‘negative reactions’ during periods of isolation, confinement, demanding work schedules, stimulus reduction, separation from loved ones, sleep deprivation, and a host of other stressors are more appropriately viewed as normative rather than pathogenic.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "As a result of isolation, many mental health issues may arise in an individual. As per the recent datas, sucide rate has increased in most of the developing countries. We humans are social beings. We love travelling. We like meeting new people, making friends, going out with friends and family. There are people around the world going through a lot of problems and stress. The problem might be anything. It might be work related, family related, relationship related etc. Being with friends, family, siblings and sharing the problems really help in minimizing its effects. But as a result of isolation, people are trapped with all those problems within themselves. This may soon give a rise to big issues of mental health. People may suffer from different mental illnesses. These illnesses may take time to get unveiled to the world. Extreme mental conditions may lead people to do something stupid. Many people have turned unemployed as a result of this lockdown and isolation. The greatest effect can be seen in poor and middle class people. ",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "Due to less interaction with others, there may be changes in social relationships among people. People might get more and more self concerned. Social relationships may decline. In spite of different social media sites, interfacing with people online is much different from meeting them in real life.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Image.asset("images/mental.PNG", fit: BoxFit.cover),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "(Astronauts in ISS are always in very long isolation. If they can stay isolated in the interstellar space, why can’t we stay isolated at our own home!)",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "While there are many problems arising in mental and social health of individuals as an effect of isolation, there are many ways by the means of which such effects can be minimized. Some of them are as follows:",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "⦁	There might be projects you have wanted to do for a long time. But you haven’t because you never had enough time. Now, it’s the best time to start working on your dream projects.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "⦁	Quarantine is the best time to improve yourself. You can spend your free time by learning more about the areas of your interest. Lots of free courses and e-books asr available on the internet. Just choose the area of your interest and go for it.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "⦁	You can also use this time to learn some new skills like cooking, art, crafts, etc. If you have free time, utilize it for something good. Involving yourself in different activities helps to keep you mentally well as well as helps you to gain more knowledge.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "⦁	You should try to be in contact with as many people as you can. Just call them, text them or email them. Keep yourself busy as much as you can. Talk with your friends, family, relatives, siblings and try not to ruin your social behaviour.",
                size: 18,
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
