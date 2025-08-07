import 'package:dms/features/dashboard/presentation/bloc/user_bloc.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_event.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_state.dart';
import 'package:dms/features/dashboard/presentation/widgets/add_user_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/primary_elevated_button.dart';
import '../bloc/adding_user/adding_user_cubit.dart';

class OperationPanel extends StatelessWidget {
  const OperationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddingUserCubit, AddingUserState>(
      builder: (context, addingUserState) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (addingUserState.isAddingUser) {
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
                  CustomButton(onPressed: () {}, text: 'Edit'),
                  CustomButton(onPressed: () {}, text: 'Delete'),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
