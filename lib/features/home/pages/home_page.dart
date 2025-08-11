import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtixon/core/utils/app_colors.dart';
import 'package:imtixon/features/home/widgets/home_page_trending.dart';
import 'package:imtixon/features/home/widgets/home_page_recently.dart';
import 'package:imtixon/features/home/widgets/home_page_top_chef.dart';
import 'package:imtixon/features/home/widgets/home_page_your_recipes.dart';

import '../../common/bottom_navigation_bar_gradient.dart';
import '../../common/bottom_navigation_bar_main.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/recipe_list_app_bar_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBarWidget(
        bottom: RecipeListAppBarBottom(),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 19.h,
          children: [
            HomePageTrending(),
            HomePageYourRecipes(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 19.h),
              child: Column(
                spacing: 19.h,
                children: [
                  HomePageTopChef(),
                  HomePageRecently(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BottomNavigationBarGradient(),
          BottomNavigationBarMain(),
        ],
      ),
    );
  }
}
