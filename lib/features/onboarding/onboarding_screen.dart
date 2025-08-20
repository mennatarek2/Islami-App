import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';
import 'package:islami_app/features/main_layout/main_layout.dart';
import 'package:islami_app/features/splash/splash_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => MainLayout()));
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: ColorsManager.gold,
    );

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: ColorsManager.gold,
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: ColorsManager.black,
      imagePadding: EdgeInsets.only(top: 150),
      imageFlex: 3,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: ColorsManager.black,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      globalHeader: Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                ImageAssets.islamiLogo,
                fit: BoxFit.cover,
                width: 200,
                height: 100,
              ),
              SizedBox(height: 200),
            ],
          ),
        ),
      ),

      pages: [
        PageViewModel(
          title: "\n\nWelcome To Islmi App",

          body: "",
          image: Image.asset(ImageAssets.onboarding1),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islami",
          body: "We Are Very Excited To Have You In Our Community",
          image: Image.asset(ImageAssets.onboarding2),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: Image.asset(ImageAssets.onboarding3),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: Image.asset(ImageAssets.onboarding4),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: Image.asset(ImageAssets.onboarding5),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      showNextButton: true,
      showDoneButton: true,
      back: Text(
        'Back',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: ColorsManager.gold,
        ),
      ),
      next: Text(
        'Next',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: ColorsManager.gold,
        ),
      ),
      done: Text(
        'Finish',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: ColorsManager.gold,
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: ColorsManager.gold,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
