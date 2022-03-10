import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../core/constants.dart';
import '../core/route.dart';

class OnboardingScreen extends StatelessWidget {
  final _pageModels = [
    PageViewModel(
        title: 'Register on the app',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat cras duis adipiscing integer nulla. Iaculis',
        image: SvgPicture.asset('assets/svgs/onboarding_1.svg')),
    PageViewModel(
        title: 'Book a ride',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat cras duis adipiscing integer nulla. Iaculis',
        image: SvgPicture.asset('assets/svgs/onboarding_2.svg')),
    PageViewModel(
        title: 'Be at the terminal',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat cras duis adipiscing integer nulla. Iaculis',
        image: SvgPicture.asset('assets/svgs/onboarding_2.svg'))
  ];

  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // button style for most buttons
    final _buttonStyle = TextButton.styleFrom(
        backgroundColor: Colors.white,
        primary: Constants.boayantBlue,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)));
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        WaveWidget(
          waveAmplitude: 0,
          size: Size(double.infinity, MediaQuery.of(context).size.height * 0.5),
          config: CustomConfig(durations: [
            6000,
            6250,
            6500
          ], heightPercentages: [
            0.40,
            0.34,
            0.21,
          ], colors: [
            Constants.boayantBlue,
            Constants.boayantBlue.withOpacity(0.2),
            Constants.boayantBlue.withOpacity(0.1)
          ]),
        ),
        IntroductionScreen(
          pages: _pageModels,
          showSkipButton: true,
          showDoneButton: true,
          skip: const Text('Skip'),
          next: const Text('Next'),
          overrideDone: Column(children: [
            TextButton(
              child: const Text('Sign Up'),
              style: _buttonStyle,
              onPressed: () {
                context.router.replace(const SignupRoute());
              },
            ),
            const SizedBox(height: 10),
            TextButton(
                child: const Text('Sign In'),
                style: _buttonStyle,
                onPressed: () {
                  context.router.replace(const SignupRoute());
                })
          ]),
          onDone: () {
            //TODO: set already_onboarded to true in local persistence
          },
          globalBackgroundColor: Colors.transparent,
          baseBtnStyle: _buttonStyle,
          globalHeader: Container(
            padding: const EdgeInsets.only(top: 30),
            child: const Center(
              child: Text('Boayant',
                  style: TextStyle(color: Constants.boayantBlue, fontSize: 24)),
            ),
          ),
          dotsDecorator: const DotsDecorator(
            color: Colors.transparent,
            shape: CircleBorder(
              side: BorderSide(color: Colors.white),
            ),
            activeColor: Colors.white,
          ),
        ),
      ],
    ));
  }
}
