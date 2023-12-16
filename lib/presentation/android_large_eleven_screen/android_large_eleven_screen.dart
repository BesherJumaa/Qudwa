import 'bloc/android_large_eleven_bloc.dart';
import 'models/android_large_eleven_model.dart';
import 'package:besher_s_application1/core/app_export.dart';
import 'package:besher_s_application1/core/utils/validation_functions.dart';
import 'package:besher_s_application1/widgets/custom_elevated_button.dart';
import 'package:besher_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AndroidLargeElevenScreen extends StatelessWidget {
  AndroidLargeElevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeElevenBloc>(
      create: (context) => AndroidLargeElevenBloc(AndroidLargeElevenState(
        androidLargeElevenModelObj: AndroidLargeElevenModel(),
      ))
        ..add(AndroidLargeElevenInitialEvent()),
      child: AndroidLargeElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 569.v,
                        width: 288.h,
                        margin: EdgeInsets.only(top: 93.v),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Opacity(
                              opacity: 0.2,
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 569.v,
                                  width: 288.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.green3006c,
                                    borderRadius: BorderRadius.circular(
                                      284.h,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildLoginForm(context),
                                    SizedBox(height: 22.v),
                                    _buildEmailField(context),
                                    SizedBox(height: 22.v),
                                    _buildPasswordField(context),
                                    SizedBox(height: 22.v),
                                    _buildConfirmPasswordField(context),
                                    SizedBox(height: 43.v),
                                    _buildCreateAccountButton(context),
                                    SizedBox(height: 15.v),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "msg7".tr,
                                            style: CustomTextStyles
                                                .labelLargeBluegray300,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: "lbl2".tr,
                                            style: CustomTextStyles
                                                .labelLargePurple20001
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.2,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArabic2108x115,
                        height: 108.v,
                        width: 115.h,
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 95.v),
                        child: Text(
                          "lbl8".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.3,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgQuran21,
                        height: 195.v,
                        width: 151.h,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0, 0.49),
        end: Alignment(0.96, 0.49),
        colors: [
          appTheme.teal30001,
          appTheme.purple20003,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: BlocSelector<AndroidLargeElevenBloc, AndroidLargeElevenState,
          TextEditingController?>(
        selector: (state) => state.loginFormController,
        builder: (context, loginFormController) {
          return CustomTextFormField(
            controller: loginFormController,
            hintText: "lbl6".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 20.v, 18.h, 21.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUsersolid1,
                height: 20.v,
                width: 17.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 61.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0, 0.49),
        end: Alignment(0.96, 0.49),
        colors: [
          appTheme.teal30001,
          appTheme.purple20003,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: BlocSelector<AndroidLargeElevenBloc, AndroidLargeElevenState,
          TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomTextFormField(
            controller: emailFieldController,
            hintText: "msg5".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 19.v, 16.h, 19.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcroundemailDeepPurple100,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 61.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0, 0.51),
        end: Alignment(1, 0.51),
        colors: [
          appTheme.teal30001,
          appTheme.purple20003,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: BlocBuilder<AndroidLargeElevenBloc, AndroidLargeElevenState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordFieldController,
            hintText: "lbl3".tr,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<AndroidLargeElevenBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(21.h, 21.v, 17.h, 21.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLocksolid1,
                  height: 19.v,
                  width: 17.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 61.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 21.v),
            borderDecoration: TextFormFieldStyleHelper.outlineTL30,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0, 0.51),
        end: Alignment(1, 0.51),
        colors: [
          appTheme.teal30001,
          appTheme.purple20003,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: BlocBuilder<AndroidLargeElevenBloc, AndroidLargeElevenState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmPasswordFieldController,
            hintText: "lbl7".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<AndroidLargeElevenBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(22.h, 21.v, 17.h, 21.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLocksolid1,
                  height: 19.v,
                  width: 17.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 61.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.symmetric(vertical: 21.v),
            borderDecoration: TextFormFieldStyleHelper.outlineTL30,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientTealToPurpleDecoration,
    );
  }
}
