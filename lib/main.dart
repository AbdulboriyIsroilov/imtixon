import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtixon/core/router/routers.dart';
import 'package:imtixon/data/repositores/home_repository.dart';
import 'package:imtixon/features/home/manegers/home_view_model.dart';
import 'package:imtixon/features/home/pages/home_page.dart';
import 'package:imtixon/features/home/pages/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = Routers().router;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MultiProvider(
        providers: [
          Provider(create: (context)=> HomeRepository()),
          ChangeNotifierProvider(
            create: (context) =>
                HomeViewModel(
                    categoriyRepo: context.read(),
                    recipeRepo: context.read(),
                    topChefRepo: context.read(),
                    topRecently: context.read(),
                  )
                  ..fetchCategoriy()
                  ..fetchRecipe()
                  ..fetchTopChef()
                  ..fetchRecently(),
          ),
        ],
        builder: (context, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
        ),
      ),
    );
  }
}
