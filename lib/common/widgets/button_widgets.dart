

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/common/utils/app_colors.dart';
import 'package:river_pod/common/widgets/app_shadow.dart';
import 'package:river_pod/common/widgets/text_widgets.dart';

Widget appButton({String text = "", double width = 325, double height = 50, bool isLogin = true, BuildContext? context, void Function()? func}){
  return GestureDetector(
    onTap: func,
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(
        border: Border.all(color: AppColors.primaryFourElementText),
        color: isLogin?AppColors.primaryElement:Colors.white
      ),
      child: Center(child: text16Normal(text: text, color: isLogin?AppColors.primaryBackground:AppColors.primaryText)),
    ),
  );
} 