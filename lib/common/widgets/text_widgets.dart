import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget text24Normal({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.blue, fontSize: 24.sp, fontWeight: FontWeight.normal),
  );
}
