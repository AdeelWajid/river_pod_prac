import 'package:flutter/material.dart';
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
                children: [
                  thirdPartyLogin(),
                ],
              ))),
    );
  }
}
