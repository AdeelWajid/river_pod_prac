

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appImage({String imagePath = "", double width= 16, double height = 16}){
  return Image.asset(imagePath.isEmpty?"assets/icons/user.png":imagePath, height: height.h, width: width.w,);
}