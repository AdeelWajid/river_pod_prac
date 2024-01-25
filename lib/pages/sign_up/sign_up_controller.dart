import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_pod/common/global_loader/global_loader.dart';
import 'package:river_pod/common/widgets/pop_messages.dart';
import 'package:river_pod/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp()async{
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if(name.isEmpty){
      toastInfo(msg: "Your name is empty");
      return;
    }
    if(email.isEmpty){
      toastInfo(msg: "your email is empty");
      return;
    }
    if(password.isEmpty){
      toastInfo(msg: "your password is empty");
      return;
    }

    if(password != rePassword){
      toastInfo(msg: "Password did not match!");
      return;
    }

    //show the loading
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    var context = Navigator.of(ref.context);
    try{

      final credential=
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (kDebugMode) {
        print(credential);
      }
      if(credential.user!=null){
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);
        // get server photo url
        // set user photo url
        toastInfo(msg: "An email has been sent to verify your account.");
        context.pop();
      }
    }catch(e){
      toastInfo(msg: e.toString());
    }
    // dismiss the loading
    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}