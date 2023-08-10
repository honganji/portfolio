import 'package:go_router/go_router.dart';
import 'package:portfolio/screens/deeplink1.dart';
import 'package:portfolio/screens/deeplink2.dart';
import 'package:portfolio/wrapper.dart';
import 'package:portfolio/screens/error_page.dart';

final GoRouter router = GoRouter(
    errorBuilder: (context, state) => const ErrorPage(),
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const Wrapper(),
      ),
      GoRoute(
        path: "/deeplink1",
        name: "deeplink1",
        builder: (context, state) => DeepLink1(
          path: state.pathParameters["path"].toString(),
        ),
      ),
      GoRoute(
        path: "/deeplink2",
        name: "deeplink2",
        builder: (context, state) => const DeepLink2(),
      )
  ]
);
