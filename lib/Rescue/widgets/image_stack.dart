import 'package:flutter/material.dart';

import '../constants.dart';

class ImageStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Image.asset(
          "images/preview.jpg",
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Rescue",
            textAlign: TextAlign.center,
            style: kAppNameStyle,
          ),
        ),
      ],
    );
  }
}
