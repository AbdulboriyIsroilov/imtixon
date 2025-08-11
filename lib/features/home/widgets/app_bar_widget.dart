import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtixon/core/utils/app_style.dart';
import 'package:imtixon/core/utils/app_svg.dart';
import 'package:imtixon/features/common/icon_button_popular.dart';

import '../../../core/utils/app_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    this.bottom,
  });

  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi! Dianne",
            style: AppStyle.w400s25wr,
          ),
          Text(
            "What are you cooking today",
            style: AppStyle.w400s13w,
          ),
        ],
      ),
      actionsPadding: EdgeInsetsGeometry.only(bottom: 27.h, right: 38.w),
      actions: [
        IconButtonPopular(icon: AppSvg.notification),
        SizedBox(width: 5.w),
        IconButtonPopular(icon: AppSvg.search),
      ],
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, bottom != null ? 113 : 61);
}
