import 'package:flutter/material.dart';

import 'components/home/dropdown.dart';
import 'components/home/header.dart';
import 'components/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeader(
            image: "assets/icons/Drcorona.svg",
            textTop: "All you need",
            textBody: "is stay at home.",
          ),
          DropDown(),
          SizedBox(
            height: 20,
          ),
          HomeBody(),
        ],
      ),
    );
  }
}
