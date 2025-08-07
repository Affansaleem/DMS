import 'package:dms/config/route/route_paths.dart';
import 'package:dms/core/constants/app_assets.dart';
import 'package:dms/core/constants/app_strings.dart';
import 'package:dms/core/widgets/app_bar_widget.dart';
import 'package:dms/core/widgets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WebAppBar(
        leading: AppImage(assetPath: AppAssets.logo),
        actions: [
          AppImage(
            assetPath: AppAssets.notificationSvg,
            borderRadius: 100,
            onTap: () => context.go(RoutePaths.notification),
          ),
          
        ],
        title: AppStrings.dashboard,
      ),
    );
  }
}
