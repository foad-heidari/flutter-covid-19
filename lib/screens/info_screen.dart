import 'package:covid_19/constants.dart';

import './components/home/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "Get to know",
              textBody: "About Covid-19",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptoms",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptopCard(
                        image: "assets/images/headache.png",
                        title: "Headache",
                        is_active: true,
                      ),
                      SymptopCard(
                        image: "assets/images/caugh.png",
                        title: "Caugh",
                      ),
                      SymptopCard(
                        image: "assets/images/fever.png",
                        title: "Rever",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("Prevention", style: kTitleTextstyle),
                  SizedBox(height: 20),
                  PreventCard(
                    image: "assets/images/wear_mask.png",
                    title: "wear fase mask",
                    body:
                        "since the start of covid-19 outbreak some place have full embraced wearing facemask.",
                  ),
                  SizedBox(height: 20),
                  PreventCard(
                    image: "assets/images/wash_hands.png",
                    title: "wash your hands",
                    body:
                        "since the start of covid-19 outbreak some place have full embraced wearing facemask.",
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String body;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 30,
                      color: kShadowColor),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              right: 0,
              child: Container(
                height: 136,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      body,
                      style: TextStyle(fontSize: 12),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SymptopCard extends StatelessWidget {
  final String image;
  final String title;
  final bool is_active;
  const SymptopCard({
    Key key,
    this.image,
    this.title,
    this.is_active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          is_active
              ? BoxShadow(
                  offset: Offset(0, 10),
                  color: kActiveShadowColor,
                  blurRadius: 20,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  color: kShadowColor,
                  blurRadius: 6,
                )
        ],
      ),
      child: Column(
        children: [
          Image.asset(image, height: 90),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
