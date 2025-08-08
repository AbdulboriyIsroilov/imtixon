import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtixon/core/utils/app_colors.dart';
import 'package:imtixon/core/utils/app_style.dart';
import 'package:imtixon/features/home/manegers/home_view_model.dart';
import 'package:provider/provider.dart';

class HomePageTopChef extends StatelessWidget {
  const HomePageTopChef({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        Text(
          "Top Chef",
          style: AppStyle.w500s15wr,
        ),
        Consumer<HomeViewModel>(
          builder: (context, vm, child) => vm.topChefLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(vm.topChef.length, (index) {
                      return Column(
                        spacing: 2,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6.77.r),
                            child: Image.network(
                              vm.topChef[index].profilePhoto,
                              width: 82.69.w,
                              height: 74.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            vm.topChef[index].firstName,
                            style: AppStyle.w400s12rp.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
        ),
      ],
    );
  }
}
