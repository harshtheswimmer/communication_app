import 'package:communications/common/values/colors.dart';
import 'package:communications/pages/frame/sign_in/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text(
        "Gotcha .",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontWeight: FontWeight.bold,
            fontSize: 34.sp),
      ),
    );
  }

  Widget _buildThirdPartyLogin(String loginName, String loginType) {
    return GestureDetector(
      onTap: () {
        controller.handleSignIn("google");
      },
      child: Container(
        width: 295.w,
        height: 44.h,
        margin: const EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1)),
          ],
        ),
        child: Row(
            mainAxisAlignment: loginType == ""
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              loginType == ""
                  ? Container()
                  : Container(
                      padding: EdgeInsets.only(left: 40.w, right: 30.w),
                      child: Image.asset('assets/icons/$loginType.png'),
                    ),
              Container(
                child: Text(
                  "Sign in with $loginName",
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp),
                ),
              )
            ]),
      ),
    );
  }

  Widget _buildOrWidget() {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            indent: 40,
            height: 2.h,
            color: AppColors.primarySecondaryElementText,
          )),
          const Text("     OR      "),
          Expanded(
              child: Divider(
            endIndent: 40,
            height: 2.h,
            color: AppColors.primarySecondaryElementText,
          )),
        ],
      ),
    );
  }

  Widget _buildSignupWidget() {
    return GestureDetector(
      onTap: () {
        print('Sign up from here');
      },
      child: Text(
        "Sign up here account",
        style: TextStyle(
            color: AppColors.primaryElement,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      body: Center(
          child: Column(
        children: [
          _buildLogo(),
          _buildThirdPartyLogin("Google", "google"),
          _buildThirdPartyLogin("Facebook", "facebook"),
          _buildOrWidget(),
          _buildThirdPartyLogin("Phone number", ""),
          SizedBox(
            height: 40.h,
          ),
          Column(
            children: [
              Text(
                "Already have an  account",
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp),
              ),
              _buildSignupWidget()
            ],
          )
        ],
      )),
    );
  }
}
