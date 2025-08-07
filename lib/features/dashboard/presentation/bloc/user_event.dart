import 'package:equatable/equatable.dart';
import '../../data/models/user_model.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class AddUser extends UserEvent {
  final UserModel user;

  const AddUser(this.user);

  @override
  List<Object> get props => [user];
}

class UpdateUser extends UserEvent {
  final UserModel user;

  const UpdateUser(this.user);

  @override
  List<Object> get props => [user];
}

class DeleteUser extends UserEvent {
  final int id;

  const DeleteUser(this.id);

  @override
  List<Object> get props => [id];
}

class SelectUser extends UserEvent {
  final UserModel user;

  const SelectUser(this.user);

  @override
  List<Object> get props => [user];
}

class SearchUsers extends UserEvent {
  final String query;

  const SearchUsers(this.query);

  @override
  List<Object> get props => [query];
}

class LoadUsers extends UserEvent {}

class AddUserEvent extends UserEvent {}
