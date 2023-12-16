// ignore_for_file: must_be_immutable

part of 'android_large_six_bloc.dart';

/// Represents the state of AndroidLargeSix in the application.
class AndroidLargeSixState extends Equatable {
  AndroidLargeSixState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberMe = false,
    this.androidLargeSixModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  AndroidLargeSixModel? androidLargeSixModelObj;

  bool isShowPassword;

  bool rememberMe;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        rememberMe,
        androidLargeSixModelObj,
      ];
  AndroidLargeSixState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberMe,
    AndroidLargeSixModel? androidLargeSixModelObj,
  }) {
    return AndroidLargeSixState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberMe: rememberMe ?? this.rememberMe,
      androidLargeSixModelObj:
          androidLargeSixModelObj ?? this.androidLargeSixModelObj,
    );
  }
}
