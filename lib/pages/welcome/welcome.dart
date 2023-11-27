import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/common/widgets/text_widgets.dart';

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
              Column(
                children: [
                  Image.asset(
                    "assets/images/reading.png",
                    fit: BoxFit.fitHeight,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 15.h),
                      child: text24Normal(text: "First see Learning"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
