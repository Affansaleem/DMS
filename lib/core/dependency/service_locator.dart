import 'package:dms/features/dashboard/presentation/bloc/user_bloc.dart';
import 'package:dms/shared/cubit/sidebar_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<SidebarCubit>(() => SidebarCubit());
  locator.registerLazySingleton<UserBloc>(() => UserBloc());
}
