import 'package:flutter/material.dart';
import 'package:river_pod/pages/welcome/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            children: [
              appOnboardingPage(
                  imagePath: "assets/images/reading.png",
                  title: "First see Learning",
                  subTitle:
                      "Forget about the paper, now learning all in one place"),
              appOnboardingPage(
                  imagePath: "assets/images/man.png",
                  title: "Connect With Everyone",
                  subTitle:
                      "Always keep in touch with your tutor and friends. Let's get connected"),
              appOnboardingPage(
                  imagePath: "assets/images/boy.png",
                  title: "Always Fascinated Learning",
                  subTitle:
                      "Anywhere, anytime. The time is at your discretion. So study wherever you can"),
            ],
          )
        ],
      ),
    );
  }
}
