import 'package:communications/common/style/layout.dart';
import 'package:communications/pages/frame/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/values/colors.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});
  Widget _buildPageHeadTitle(String title) {
    return Container(
      margin: EdgeInsets.only(
          top: AppLayout.getHeight(350), left: AppLayout.getWidth(100)),
      child: Text(
        title,
        style: TextStyle(
            color: AppColors.primaryElementText,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 45.sp),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: Container(
        width: 360.w,
        height: 780.h,
        child: _buildPageHeadTitle(controller.title),
      ),
    );
  }
}
