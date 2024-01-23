import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/common/widgets/app_shadow.dart';
import 'package:river_pod/common/widgets/image_widgets.dart';
import 'package:river_pod/common/widgets/text_widgets.dart';

Widget appTextField({String text = "", String iconName = "", String hintText = "Type in your info", bool obscureText = false, void Function(String value)? func}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text:text),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appDecorationTextField(),
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(left: 17.w),
              child: appImage(imagePath: iconName),
            ),
            Container(
              width: 280.w,
              height: 50.h,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  )
                ),
              onChanged: (value){
                func!(value);
              },
              maxLines: 1,
              autocorrect: false,
              obscureText: obscureText,
              ),
            ),
          ]),
        ),
      ],
    ),
  );
}
