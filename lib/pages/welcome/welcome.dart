import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/pages/welcome/widgets.dart';

import '../notifiers/welcome_notifier.dart';

// manual technique
// final indexProvider = StateProvider((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 30.h),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,
                  children: [
                    appOnboardingPage(_controller, context,
                        index: 1,
                        imagePath: "assets/images/reading.png",
                        title: "First see Learning",
                        subTitle:
                            "Forget about the paper, now learning all in one place"),
                    appOnboardingPage(_controller, context,
                        index: 2,
                        imagePath: "assets/images/man.png",
                        title: "Connect With Everyone",
                        subTitle:
                            "Always keep in touch with your tutor and friends. Let's get connected"),
                    appOnboardingPage(_controller, context,
                        index: 3,
                        imagePath: "assets/images/boy.png",
                        title: "Always Fascinated Learning",
                        subTitle:
                            "Anywhere, anytime. The time is at your discretion. So study wherever you can"),
                  ],
                ),
                Positioned(
                  bottom: 50.h,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: index,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      size: Size.square(9.0),
                      activeSize: Size(24.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.w)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
