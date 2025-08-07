import 'package:dms/config/route/app_routes.dart';
import 'package:dms/config/theme/app_theme.dart';
import 'package:dms/core/constants/app_env.dart';
import 'package:dms/core/dependency/service_locator.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_bloc.dart';
import 'package:dms/shared/cubit/sidebar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<SidebarCubit>()),
        BlocProvider(create: (_) => locator<UserBloc>()),
      ],
      child: MaterialApp.router(
        title: AppEnv.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
