part of 'adding_user_cubit.dart';

class AddingUserState extends Equatable {
  final bool isAddingUser;

  const AddingUserState({required this.isAddingUser});

  AddingUserState copyWith({bool? isAddingUser}) {
    return AddingUserState(isAddingUser: isAddingUser ?? this.isAddingUser);
  }

  @override
  List<Object?> get props => [isAddingUser];
}
