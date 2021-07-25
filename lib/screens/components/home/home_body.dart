import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'home_body_counter.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Case Update\n",
                      style: kTitleTextstyle,
                    ),
                    TextSpan(
                      text: "Newst update March 28",
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "See details",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  color: kShadowColor,
                  blurRadius: 30,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Counter(
                  color: kInfectedColor,
                  number: 1046,
                  title: "Infected",
                ),
                Counter(
                  color: kDeathColor,
                  number: 86,
                  title: "Deaths",
                ),
                Counter(
                  color: kRecovercolor,
                  number: 46,
                  title: "Recovered",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Spread  of Virus",
                style: kTitleTextstyle,
              ),
              Text(
                "See details",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(20),
            height: 178,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  color: kShadowColor,
                  blurRadius: 30,
                ),
              ],
            ),
            child: Image.asset(
              "assets/images/map.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
