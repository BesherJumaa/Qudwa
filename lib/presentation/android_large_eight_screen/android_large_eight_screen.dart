import 'bloc/android_large_eight_bloc.dart';
import 'models/android_large_eight_model.dart';
import 'package:besher_s_application1/core/app_export.dart';
import 'package:besher_s_application1/widgets/custom_elevated_button.dart';
import 'package:besher_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeEightScreen extends StatelessWidget {
  const AndroidLargeEightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeEightBloc>(
        create: (context) => AndroidLargeEightBloc(AndroidLargeEightState(
            androidLargeEightModelObj: AndroidLargeEightModel()))
          ..add(AndroidLargeEightInitialEvent()),
        child: AndroidLargeEightScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeEightBloc, AndroidLargeEightState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [appTheme.teal300, appTheme.purple20002])),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(children: [
                        _buildTwentyStack(context),
                        SizedBox(height: 4.v),
                        _buildThreeStack(context),
                        SizedBox(height: 37.v),
                        CustomElevatedButton(
                            text: "lbl".tr,
                            margin: EdgeInsets.symmetric(horizontal: 40.h),
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeTeal300),
                        SizedBox(height: 23.v),
                        CustomOutlinedButton(
                            text: "lbl2".tr,
                            margin: EdgeInsets.symmetric(horizontal: 40.h)),
                        SizedBox(height: 5.v)
                      ])))));
    });
  }

  /// Section Widget
  Widget _buildTwentyStack(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 160.v,
            width: 306.h,
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                      width: 251.h,
                      child: Text("msg".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineLargeGray100
                              .copyWith(height: 1.33)))),
              CustomImageView(
                  imagePath: ImageConstant.imgPattern1,
                  height: 83.v,
                  width: 74.h,
                  alignment: Alignment.topRight)
            ])));
  }

  /// Section Widget
  Widget _buildThreeStack(BuildContext context) {
    return SizedBox(
        height: 382.v,
        width: 326.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Opacity(
              opacity: 0.2,
              child: CustomImageView(
                  imagePath: ImageConstant.imgWindow1,
                  height: 382.v,
                  width: 326.h,
                  alignment: Alignment.center)),
          CustomImageView(
              imagePath: ImageConstant.imgKoran1,
              height: 164.v,
              width: 163.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 92.v))
        ]));
  }
}
