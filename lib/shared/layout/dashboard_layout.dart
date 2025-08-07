import 'package:dms/core/widgets/app_sidebar.dart';
import 'package:dms/shared/cubit/sidebar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../config/route/route_paths.dart';
import '../../config/theme/app_colors.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_strings.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/app_image.dart';
import '../../features/dashboard/presentation/dashboard_feature.dart';
import '../../features/setting/presentation/settings_feature.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WebAppBar(
        leading: AppImage(assetPath: AppAssets.logo, padding: EdgeInsets.all(5.0)),
        actions: [
          AppImage(
            padding: EdgeInsets.all(12.0),
            assetPath: AppAssets.notificationSvg,
            borderRadius: 100,
            color: AppColors.scaffoldBackground,
            onTap: () => context.go(RoutePaths.notification),
          ),
        ],
        title: AppStrings.dashboard,
      ),
      body: Row(
        children: [
          AppSidebar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<SidebarCubit, SidebarTab>(
                builder: (context, selectedTab) {
                  switch (selectedTab) {
                    case SidebarTab.dashboard:
                      return const DashboardPage();
                    case SidebarTab.settings:
                      return const SettingsPage();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
