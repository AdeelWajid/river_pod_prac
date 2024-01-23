
import 'package:river_pod/pages/sign_up/notifier/register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier{

  
  @override
  RegisterState build(){
    return RegisterState();
  }

  void onUserNameChanged(String name){
    print("username: ${name}");
    state = state.copyWith(cusername: name);
    print("state ${state.userName}");
  }
  void onUserEmailChanged(String email){
    state = state.copyWith(cemail: email);
  }
  void onUserPasswordChanged(String password){
    state = state.copyWith(cpassword: password);
  }
  void onUserConfirmPasswordChanged(String rePassword){
    state = state.copyWith(crePassword: rePassword);
  }
}