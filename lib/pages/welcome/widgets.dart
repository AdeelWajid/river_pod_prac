import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/common/widgets/app_shadow.dart';
import 'package:river_pod/pages/sign_in/sign_in.dart';

import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage(PageController controller, BuildContext context,
    {String imagePath = "assets/images/reading.png",
    String title = "",
    String subTitle = "",
    int index = 1}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitHeight,
      ),
      Container(
          margin: EdgeInsets.only(top: 15.h), child: text24Normal(text: title)),
      Container(
        margin: EdgeInsets.only(top: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: Duration(milliseconds: 300), curve: Curves.linear);
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const SignIn()));
      }
    },
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
      decoration: appBoxShadow(),
      child: Center(
          child: text16Normal(
              text: index < 3 ? "Next" : "Get started", color: Colors.white)),
    ),
  );
}
