import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_pod/common/widgets/app_bar.dart';
import 'package:river_pod/common/widgets/app_textfield.dart';
import 'package:river_pod/common/widgets/button_widgets.dart';
import 'package:river_pod/common/widgets/text_widgets.dart';
import 'package:river_pod/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:river_pod/pages/sign_up/notifier/register_notifier.dart';
import 'package:river_pod/pages/sign_up/sign_up_controller.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regProvider = ref.watch(registerNotifierProvider);
    var controller = SignUpController(ref: ref);
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
              appBar: buildAppbar(title: "Register"),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                        child: text14Normal(
                            text: "Enter your details below & free sign up")),
                    SizedBox(
                      height: 50.h,
                    ),
                    appTextField(
                        text: "User name",
                        func: (value)=>ref.read(registerNotifierProvider.notifier).onUserNameChanged(value),
                        iconName: "assets/icons/user.png",
                        hintText: "Enter your user name"),
                    SizedBox(
                      height: 20.h,
                    ),
                    appTextField(
                        text: "Email",
                        func: ref.read(registerNotifierProvider.notifier).onUserEmailChanged,
                        iconName: "assets/icons/user.png",
                        hintText: "Enter your email address"),
                    SizedBox(
                      height: 20.h,
                    ),
                    appTextField(
                        text: "Password",
                        func: ref.read(registerNotifierProvider.notifier).onUserPasswordChanged,
                        iconName: "assets/icons/lock.png",
                        hintText: "Enter your password",
                        obscureText: true),
                    SizedBox(
                      height: 20.h,
                    ),
                    appTextField(
                        text: "Confirm Password",
                        func: ref.read(registerNotifierProvider.notifier).onUserConfirmPasswordChanged,
                        iconName: "assets/icons/lock.png",
                        hintText: "Enter your Confirm Password",
                        obscureText: true),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25.w),
                      child: text14Normal(
                          text:
                              "By creating ac acount you are agreeing our terms and conditions"),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    Center(
                        child: appButton(
                            text: "Register", isLogin: true, context: context, func:(){
                              controller.handleSignUp();
                            } )),
                  ],
                ),
              ))),
    );
  }
}
