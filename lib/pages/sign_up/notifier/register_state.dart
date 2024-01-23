class RegisterState{
  final String userName;
  final String email;
  final String password;
  final String rePassword;

  RegisterState({this.userName="", this.email="", this.password="", this.rePassword=""});
  RegisterState copyWith({
    String? cusername, String? cemail, String? cpassword, String? crePassword
  }){
    return RegisterState(
      userName: cusername??userName,
      email: cemail??this.email,
      password: cpassword??this.password,
      rePassword: crePassword??this.rePassword,
    );
  }
}