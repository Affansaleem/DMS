import 'package:dms/features/dashboard/presentation/bloc/user_event.dart';
import 'package:dms/features/dashboard/presentation/widgets/clients_list_panel.dart';
import 'package:dms/features/dashboard/presentation/widgets/operations_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(LoadUsers());
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(flex: 2, child: ClientsListPanel()), Expanded(flex: 3, child: OperationPanel())]);
  }
}
