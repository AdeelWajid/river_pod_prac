import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import 'text_widgets.dart';

AppBar buildAppbar({String title= "Log in"}) {
  return AppBar(
    // backgroundColor: Colors.white,
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(10.h),
      child: Container(
        color: Colors.grey.withOpacity(0.3),
        height: 1,
      ),
    ),
    title: text16Normal(text: title, color: AppColors.primaryText),
  );
}