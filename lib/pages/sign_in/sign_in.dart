import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/common/widgets/text_widgets.dart';
import 'package:river_pod/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
              appBar: buildAppbar(),
              backgroundColor: Colors.white,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  thirdPartyLogin(),
                  Center(child: text14Normal(text: "Or use your email account to login")),
                  SizedBox(
                    height: 50.h,
                  ),
                  appTextField(text: "Email")
                ],
              ))),
    );
  }
}
