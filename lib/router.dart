import 'package:go_router/go_router.dart';
import 'package:portfolio/screens/deeplink.dart';
import 'package:portfolio/wrapper.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const Wrapper(),
  ),
  GoRoute(
    path: "/:path",
		name: "news",
    builder: (context, state) => DeepLink(
      path: state.pathParameters["path"].toString(),
    ),
  )
]);
