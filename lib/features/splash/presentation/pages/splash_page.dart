import 'dart:async';
import 'package:dms/config/route/route_paths.dart';
import 'package:dms/core/constants/app_assets.dart';
import 'package:dms/core/widgets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_env.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: AppEnv.splashTimer), () => context.go(RoutePaths.dashboard));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: AppImage(assetPath: AppAssets.appLogoHorizontal)));
  }
}
