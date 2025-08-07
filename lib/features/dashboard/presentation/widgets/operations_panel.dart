import 'package:dms/features/dashboard/presentation/bloc/user_bloc.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_event.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_state.dart';
import 'package:dms/features/dashboard/presentation/widgets/add_user_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OperationPanel extends StatelessWidget {
  const OperationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is AddUserState) {
          return UserForm(onSubmit: (user) => context.read<UserBloc>().add(AddUser(user)));
        } else if (state.selectedUser == null) {
          return const Center(child: Text("Select a user to view or perform operations"));
        }
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("User Details", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text("Name: ${state.selectedUser!.name}"),
              Text("Email: ${state.selectedUser!.email}"),
              Text("Department: ${state.selectedUser!.department}"),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: const Text("Edit")),
              ElevatedButton(onPressed: () {}, child: const Text("Delete")),
            ],
          ),
        );
      },
    );
  }
}
