import 'package:go_router/go_router.dart';
import 'package:portfolio/screens/deeplink.dart';

import 'layout/mobile_layout.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const MobileLayout(),
  ),
  GoRoute(
    path: "/:id/:path",
		name: "news",
    builder: (context, state) => DeepLink(
      userId: state.pathParameters["id"].toString(),
      path: state.pathParameters["path"].toString(),
    ),
  )
]);
