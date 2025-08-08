import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:imtixon/core/router/router_names.dart';
import 'package:imtixon/core/utils/app_colors.dart';
import 'package:imtixon/core/utils/app_style.dart';
import 'package:imtixon/core/utils/app_svg.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      context.go(RouterNames.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.watermelonRed,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 152.67.w,
              height: 152.67.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 12.78,
                children: [
                  SvgPicture.asset(AppSvg.pichoq),
                  SvgPicture.asset(AppSvg.vilka),
                ],
              ),
            ),
            Text("DishDash", style: AppStyle.w600s64w),
          ],
        ),
      ),
    );
  }
}
