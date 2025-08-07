import 'package:dms/config/route/route_names.dart';
import 'package:dms/config/route/route_paths.dart';
import 'package:dms/shared/layout/dashboard_layout.dart';
import 'package:go_router/go_router.dart';
import '../../features/notification/presentation/notification_feature.dart';
import '../../features/splash/presentation/splash_feature.dart';

class AppRoutes {
  static GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,
    routes: [
      GoRoute(path: RoutePaths.splash, name: RouteNames.splash, builder: (context, state) => const SplashPage()),
      /// Dashboard layout
      GoRoute(
        path: RoutePaths.dashboard,
        name: RouteNames.dashboard,
        builder: (context, state) => const DashboardLayout(),
      ),
      GoRoute(
        path: RoutePaths.notification,
        name: RouteNames.notification,
        builder: (context, state) => const NotificationPage(),
      ),
    ],
  );
}
