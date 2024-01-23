

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_pod/common/widgets/pop_messages.dart';
import 'package:river_pod/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp(){
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    print("Name is :${name}");
    print("Name is :${email}");
    print("Name is :${password}");
    print("Name is :${rePassword}");

    if(password != rePassword){
      toastInfo(msg: "Password did not match!");
    }
  }
}