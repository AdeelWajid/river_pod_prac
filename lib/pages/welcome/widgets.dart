import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage(
    {String imagePath = "assets/images/reading.png",
    String title = "",
    String subTitle = ""}) {
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
    ],
  );
}
