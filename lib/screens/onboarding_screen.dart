import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();
  
  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28,
      fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Lorem Ipsum is a simple dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          image: Image.asset("images/splash1.png", width: 200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body: "Lorem Ipsum is a simple dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          image: Image.asset("images/splash2.png", width: 200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body: "Lorem Ipsum is a simple dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          image: Image.asset("images/splash3.png", width: 200,),
          decoration: pageDecoration,
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text("Back", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xFFEF6969)
      ),),
      next: Text("Next", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xFFEF6969)
      ),),
      onDone: (){},
      onSkip: (){},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color(0xFFEf6969),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        )
      ),
    );
  }
}