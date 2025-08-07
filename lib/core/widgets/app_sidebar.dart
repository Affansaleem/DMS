import 'package:dms/shared/cubit/sidebar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

enum SidebarTab { dashboard, settings }

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SidebarCubit, SidebarTab>(
      builder: (context, state) {
        return Container(
          width: 240,
          color: Theme.of(context).primaryColor,
          height: double.infinity,
          child: Column(
            children: [
              const Gap(24.0),
              _buildTile(
                context,
                icon: Icons.dashboard,
                title: 'Dashboard',
                tab: SidebarTab.dashboard,
                selectedTab: state,
              ),
              _buildTile(
                context,
                icon: Icons.settings,
                title: 'Settings',
                tab: SidebarTab.settings,
                selectedTab: state,
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Side bar state
Widget _buildTile(
  BuildContext context, {
  required IconData icon,
  required String title,
  required SidebarTab tab,
  required SidebarTab selectedTab,
}) {
  final bool isSelected = (tab == selectedTab);

  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
    leading: Icon(icon, color: isSelected ? Colors.amberAccent : Colors.white),
    title: Text(
      title,
      style: TextStyle(
        color: isSelected ? Colors.amberAccent : Colors.white,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
    ),
    onTap: () => context.read<SidebarCubit>().changeTab(tab),
  );
}
