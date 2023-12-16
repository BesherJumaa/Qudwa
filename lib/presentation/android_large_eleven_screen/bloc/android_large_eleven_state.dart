// ignore_for_file: must_be_immutable

part of 'android_large_eleven_bloc.dart';

/// Represents the state of AndroidLargeEleven in the application.
class AndroidLargeElevenState extends Equatable {
  AndroidLargeElevenState({
    this.loginFormController,
    this.emailFieldController,
    this.passwordFieldController,
    this.confirmPasswordFieldController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.androidLargeElevenModelObj,
  });

  TextEditingController? loginFormController;

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  TextEditingController? confirmPasswordFieldController;

  AndroidLargeElevenModel? androidLargeElevenModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        loginFormController,
        emailFieldController,
        passwordFieldController,
        confirmPasswordFieldController,
        isShowPassword,
        isShowPassword1,
        androidLargeElevenModelObj,
      ];
  AndroidLargeElevenState copyWith({
    TextEditingController? loginFormController,
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    TextEditingController? confirmPasswordFieldController,
    bool? isShowPassword,
    bool? isShowPassword1,
    AndroidLargeElevenModel? androidLargeElevenModelObj,
  }) {
    return AndroidLargeElevenState(
      loginFormController: loginFormController ?? this.loginFormController,
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      confirmPasswordFieldController:
          confirmPasswordFieldController ?? this.confirmPasswordFieldController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      androidLargeElevenModelObj:
          androidLargeElevenModelObj ?? this.androidLargeElevenModelObj,
    );
  }
}
