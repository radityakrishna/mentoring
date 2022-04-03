import 'package:flutter/material.dart';
import 'package:helpkuy/screens/constants.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGOnboardingcolor,
      body: Column(
        children: <Widget>[
          //background
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(80))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
              ),
              //illustration image
              Positioned(
                top: 70,
                left: 35,
                child: Image(
                    image: AssetImage(
                        'assets/images/onboardingscreen/sapiens.png')),
              ),
              //logo
              // ignore: prefer_const_constructors
              Positioned(
                top: 30,
                left: 25,
                // ignore: prefer_const_constructors
                child: Image(
                    image:
                        // ignore: prefer_const_constructors
                        AssetImage('assets/images/onboardingscreen/Logo.png')),
              ),
            ],
          ),
          // ignore: prefer_const_constructors
          Container(
            // ignore: prefer_const_constructors
            child: Text(
              "Mulai hidup dengan kreasi\ntanpa batas",
              style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
