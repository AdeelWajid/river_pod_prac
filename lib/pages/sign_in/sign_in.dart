import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:river_pod/common/widgets/app_textfield.dart';
import 'package:river_pod/common/widgets/button_widgets.dart';
import 'package:river_pod/common/widgets/text_widgets.dart';
import 'package:river_pod/pages/sign_in/widgets/sign_in_widgets.dart';

import '../../common/widgets/app_bar.dart';

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
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    thirdPartyLogin(),
                    Center(child: text14Normal(text: "Or use your email account to login")),
                    SizedBox(
                      height: 50.h,
                    ),
                    appTextField(text: "Email", iconName: "assets/icons/user.png", hintText: "Enter your email address"),
                    SizedBox(
                      height: 20.h,
                    ),
                   appTextField(text: "Password", iconName: "assets/icons/lock.png", hintText: "Enter your password", obscureText: true),
                   SizedBox(height: 20.h,),
                   Container(
                    margin: EdgeInsets.only(left: 25.w),
                    child: textUnderline(text: "Forgot password?"),
                   ),
                   SizedBox(
                    height: 100.h,
                   ),
                   Center(child: appButton(text: "Login", isLogin: true)),
                   SizedBox(
                    height: 20.h,
                   ),
                   Center(child: appButton(text: "Register", isLogin: false, context: context, func: (){
                    Navigator.pushNamed(context, '/signUp');
                   })),
                  ],
                ),
              ))),
    );
  }
}
