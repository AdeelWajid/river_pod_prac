import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_pod/common/utils/app_styles.dart';
import 'package:river_pod/pages/sign_in/sign_in.dart';
import 'package:river_pod/pages/sign_up/sign_up.dart';
import 'package:river_pod/pages/welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true, // prevent overlapping onSoft keyboard
        designSize: const Size(375, 825),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'RiverPod',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.appThemeData,
            routes: {
              "/":(context)=> Welcome(),
              "/signIn":(context)=> SignIn(),
              "/signUp":(context)=> SignUp(),
            },
          
          );
        });
  }
}
