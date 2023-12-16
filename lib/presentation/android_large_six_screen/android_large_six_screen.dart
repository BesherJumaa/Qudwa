import 'bloc/android_large_six_bloc.dart';
import 'models/android_large_six_model.dart';
import 'package:besher_s_application1/core/app_export.dart';
import 'package:besher_s_application1/core/utils/validation_functions.dart';
import 'package:besher_s_application1/widgets/custom_checkbox_button.dart';
import 'package:besher_s_application1/widgets/custom_elevated_button.dart';
import 'package:besher_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AndroidLargeSixScreen extends StatelessWidget {
  AndroidLargeSixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixBloc>(
      create: (context) => AndroidLargeSixBloc(AndroidLargeSixState(
        androidLargeSixModelObj: AndroidLargeSixModel(),
      ))
        ..add(AndroidLargeSixInitialEvent()),
      child: AndroidLargeSixScreen(),
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
            height: mediaQueryData.size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 569.v,
                    width: 288.h,
                    margin: EdgeInsets.only(top: 93.v),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
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
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              right: 4.h,
                              bottom: 108.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                OutlineGradientButton(
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
                                  child: BlocSelector<
                                      AndroidLargeSixBloc,
                                      AndroidLargeSixState,
                                      TextEditingController?>(
                                    selector: (state) => state.emailController,
                                    builder: (context, emailController) {
                                      return CustomTextFormField(
                                        controller: emailController,
                                        hintText: "msg2".tr,
                                        suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              18.h, 30.v, 16.h, 5.v),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIcroundemail,
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
                                ),
                                SizedBox(height: 22.v),
                                OutlineGradientButton(
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
                                  child: BlocBuilder<AndroidLargeSixBloc,
                                      AndroidLargeSixState>(
                                    builder: (context, state) {
                                      return CustomTextFormField(
                                        controller: state.passwordController,
                                        hintText: "lbl3".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                          onTap: () {
                                            context
                                                .read<AndroidLargeSixBloc>()
                                                .add(
                                                    ChangePasswordVisibilityEvent(
                                                        value: !state
                                                            .isShowPassword));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                21.h, 21.v, 17.h, 21.v),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLocksolid1,
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
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: state.isShowPassword,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineTL30,
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 19.v),
                                _buildRememberMe(context),
                                SizedBox(height: 17.v),
                                CustomElevatedButton(
                                  text: "lbl2".tr,
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientTealToPurpleDecoration,
                                ),
                                SizedBox(height: 14.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl5".tr,
                                        style: CustomTextStyles
                                            .labelLargeBluegray300,
                                      ),
                                      TextSpan(
                                        text: "  ".tr,
                                      ),
                                      TextSpan(
                                        text: "lbl".tr,
                                        style: CustomTextStyles
                                            .labelLargePurple20001
                                            .copyWith(
                                          decoration: TextDecoration.underline,
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
                  opacity: 0.4,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArabic1,
                    height: 235.adaptSize,
                    width: 235.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                ),
                Opacity(
                  opacity: 0.1,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArabic2,
                    height: 129.v,
                    width: 125.h,
                    alignment: Alignment.topLeft,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgQuran1,
                    height: 233.v,
                    width: 224.h,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 182.v),
                    child: Text(
                      "msg4".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: BlocSelector<AndroidLargeSixBloc, AndroidLargeSixState, bool?>(
        selector: (state) => state.rememberMe,
        builder: (context, rememberMe) {
          return CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 62.h,
            text: "lbl4".tr,
            value: rememberMe,
            isRightCheck: true,
            onChange: (value) {
              context
                  .read<AndroidLargeSixBloc>()
                  .add(ChangeCheckBoxEvent(value: value));
            },
          );
        },
      ),
    );
  }
}
