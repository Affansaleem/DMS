import 'package:bloc/bloc.dart';
import 'package:dms/core/widgets/app_sidebar.dart';

class SidebarCubit extends Cubit<SidebarTab> {
  SidebarCubit() : super(SidebarTab.dashboard);

  void changeTab(SidebarTab tab) => emit(tab);
}
