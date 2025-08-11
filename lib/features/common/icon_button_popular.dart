import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtixon/core/utils/app_colors.dart';
import 'package:imtixon/core/utils/app_svg.dart';

class IconButtonPopular extends StatefulWidget {
  const IconButtonPopular({
    super.key,
    this.backGroundColor = AppColors.pastelPink,
    this.foreGroundColor = AppColors.watermelonRed,
    required this.icon,
  });

  final Color backGroundColor, foreGroundColor;
  final String icon;

  @override
  State<IconButtonPopular> createState() => _IconButtonPopularState();
}

class _IconButtonPopularState extends State<IconButtonPopular> {
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28.w,
      height: 28.h,
      child: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: tap
              ? AppColors.watermelonRed
              : widget.backGroundColor,
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        ),
        onPressed: () {
          tap = !tap;
          setState(() {});
        },
        icon: SvgPicture.asset(
          widget.icon,
          colorFilter: ColorFilter.mode(
            tap ? AppColors.white : widget.foreGroundColor,
            BlendMode.modulate,
          ),
        ),
      ),
    );
  }
}
