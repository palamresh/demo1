import 'package:demo1/interactiveviewer.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenExample extends StatefulWidget {
  const IntroductionScreenExample({super.key});

  @override
  State<IntroductionScreenExample> createState() =>
      _IntroductionScreenExampleState();
}

class _IntroductionScreenExampleState extends State<IntroductionScreenExample> {
  PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w300));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.deepOrangeAccent,
        pages: [
          PageViewModel(
            title: """GeeksForGessks Demo to Introduction Screen""",
            body:
                """ GeksFor Gesk dneo to fanfie nasr  nsfjsa nas rohn anroe naro asnrio snri an""",
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: """GeeksForGessks Demo to Introduction Screen""",
            body:
                """ GeksFor Gesk dneo to fanfie nasr  nsfjsa nas rohn anroe naro asnrio snri an""",
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: """GeeksForGessks Demo to Introduction Screen""",
            body:
                """ GeksFor Gesk dneo to fanfie nasr  nsfjsa nas rohn anroe naro asnrio snri an""",
            decoration: pageDecoration,
          ),
        ],
        onDone: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => InteractiveViewerExample()),
              ((route) => false));
        },
        onSkip: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InteractiveViewerExample()));
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(fontSize: 20),
        ),
        done: Text(
          'Start',
          style: TextStyle(fontSize: 20),
        ),
        next: Icon(
          Icons.forward,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
