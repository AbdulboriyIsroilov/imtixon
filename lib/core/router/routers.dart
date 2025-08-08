import 'package:go_router/go_router.dart';
import 'package:imtixon/core/router/router_names.dart';
import 'package:imtixon/features/home/pages/home_page.dart';
import 'package:imtixon/features/home/pages/splash_page.dart';

class Routers {
  GoRouter router = GoRouter(
    redirect: (context, state) {
      return null;
    },
    initialLocation: RouterNames.splash,

    routes: <RouteBase>[
      GoRoute(
        path: RouterNames.splash,
        builder: (context, state) => SplashPage(),
      ),
      GoRoute(
        path: RouterNames.home,
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}
