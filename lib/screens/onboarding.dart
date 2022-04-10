import 'package:flutter/material.dart';
import 'package:helpkuy/screens/constants.dart';
import 'package:helpkuy/widgets/cta_container.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGOnboardingcolor,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
                //background bezier
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(80))),
                child: Stack(
                  children: <Widget>[
                    //illustration
                    Center(
                        child: Image(
                            image: AssetImage(
                                'assets/images/onboardingscreen/sapiens.png'))),
                    //logo
                    Positioned(
                        top: 15,
                        left: 24,
                        child: Image(
                            image: AssetImage(
                                'assets/images/onboardingscreen/Logo.png'))),
                  ],
                )),
            // text #1
            Padding(
              padding: EdgeInsets.only(top: 20, left: 24),
              child: Text(
                'Mulai hidup dengan kreasi\ntanpa batas',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: "NunitoSans"),
              ),
            ),
            //text #2
            Padding(
              padding: EdgeInsets.only(top: 20, left: 24),
              child: Text(
                'Cari kreasi yang kamu suka seperti design, games, music, dan banyak lagi. Bantu suatu kreasi untuk dapatkan semua aktivitas kreasi.',
                maxLines: 3,
                style: TextStyle(fontSize: 16, fontFamily: "NunitoSans"),
              ),
            ),
            SizedBox(height: 60),
            //CTA button
            Padding(
                padding: EdgeInsets.only(left: 24, right: 24),
                child: RaisedButton(
                    child: CTAContainer(
                        text: 'Mulai Sekarang',
                        backgroundcolor: CTAColor1,
                        textcolor: Colors.white,
                        fontfamily: 'NunitoSans'),
                    onPressed: () {})),
            SizedBox(height: 16),
            //text #3
            Center(
              child: Text('Lewati untuk sekarang',
                  style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 14,
                      color: Color(0xff6e7191))),
            )
          ],
        ),
      ),
    );
  }
}
