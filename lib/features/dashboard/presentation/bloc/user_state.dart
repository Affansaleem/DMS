import 'package:equatable/equatable.dart';
import '../../data/models/user_model.dart';

abstract class UserState extends Equatable {
  final UserModel? selectedUser;
  final bool isAddingUser;

  const UserState({this.selectedUser, this.isAddingUser = false});

  @override
  List<Object?> get props => [selectedUser];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final List<UserModel> users;

  const UserLoaded({required this.users, UserModel? selectedUser}) : super(selectedUser: selectedUser);

  @override
  List<Object?> get props => [users, selectedUser];
}

class UserError extends UserState {
  final String message;

  const UserError(this.message);

  @override
  List<Object> get props => [message];
}

class AddUserState extends UserState {

}
