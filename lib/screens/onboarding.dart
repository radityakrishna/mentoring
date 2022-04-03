import 'package:flutter/material.dart';
import 'package:helpkuy/screens/constants.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGOnboardingcolor,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              'assets/images/onboardingscreen/Logo.png'),
                        ),
                        const SizedBox()
                      ],
                    ),
                    Image.asset('assets/images/onboardingscreen/sapiens.png'),
                  ],
                ),
              ),
              const Text('Mulai hidup dengan kreasi\ntanpa batas'),
            ],
          ),
        ),
      ),
    );
  }
}
