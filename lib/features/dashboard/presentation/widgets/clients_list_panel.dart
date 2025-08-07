import 'package:dms/config/theme/app_colors.dart';
import 'package:dms/core/constants/app_strings.dart';
import 'package:dms/core/widgets/custom_text_field.dart';
import 'package:dms/features/dashboard/presentation/bloc/adding_user/adding_user_cubit.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_event.dart';
import 'package:dms/features/dashboard/presentation/widgets/user_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../bloc/user_bloc.dart';
import '../bloc/user_state.dart';

class ClientsListPanel extends StatelessWidget {
  ClientsListPanel({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is UserLoaded) {
          final users = state.users;
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _searchController,
                          hintText: AppStrings.search,
                          onChanged: (value) {
                            context.read<UserBloc>().add(SearchUsers(value));
                          },
                        ),
                      ),
                      Gap(8.0),
                      Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.buttonPrimary),
                        child: IconButton(
                          onPressed: () => context.read<AddingUserCubit>().addUser(),
                          icon: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final user = users[index];
                    return Padding(padding: const EdgeInsets.only(bottom: 12), child: UserItemCard(user: user));
                  }, childCount: users.length),
                ),
              ),
            ],
          );
        } else if (state is UserError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text("No users found."));
        }
      },
    );
  }
}
