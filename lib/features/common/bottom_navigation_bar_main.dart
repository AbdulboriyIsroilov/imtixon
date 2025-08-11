import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imtixon/features/common/bottom_navigation_bar_button.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_svg.dart';

class BottomNavigationBarMain extends StatelessWidget {
  const BottomNavigationBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 34.h),
      child: Container(
        width: 281.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: AppColors.watermelonRed,
          borderRadius: BorderRadius.circular(33.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavigationBarButton(icon: AppSvg.home,),
            BottomNavigationBarButton(icon: AppSvg.community),
            BottomNavigationBarButton(icon: AppSvg.categories),
            BottomNavigationBarButton(icon: AppSvg.profile,),
          ],
        ),
      ),
    );
  }
}
