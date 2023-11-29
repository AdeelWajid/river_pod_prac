import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/common/utils/app_colors.dart';
import 'package:river_pod/common/widgets/text_widgets.dart';

Widget appTextField({String text = ""}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text:text),
      ],
    ),
  );
}

Widget thirdPartyLogin() {
  return Container(
      margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _loginButton("assets/icons/google.png"),
          _loginButton("assets/icons/apple.png"),
          _loginButton("assets/icons/facebook.png"),
        ],
      ));
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 40.w,
      height: 40.h,
      child: Image.asset(imagePath),
    ),
  );
}

AppBar buildAppbar() {
  return AppBar(
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(10.h),
      child: Container(
        color: Colors.red,
        height: 1,
      ),
    ),
    title: text16Normal(text: "Log in", color: AppColors.primaryText),
  );
}
