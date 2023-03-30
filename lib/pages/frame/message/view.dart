import 'package:communications/common/style/layout.dart';
import 'package:communications/common/values/colors.dart';
import 'package:communications/pages/frame/message/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({super.key});

  Widget _headBar() {
    return Center(
      child: Container(
        width: 320.w,
        height: 44.h,
        margin: EdgeInsets.only(bottom: 20.h, top: 20.h),
        child: Row(children: [
          Stack(
            children: [
              GestureDetector(
                child: Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                      color: AppColors.primarySecondaryBackground,
                      borderRadius: BorderRadius.all(Radius.circular(22.h)),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 2, offset: const Offset(0,1))
                      ]),
                      
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: _headBar(),
              )
            ],
          )
        ],
      )),
    );
  }
}
