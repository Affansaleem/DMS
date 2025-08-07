import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dms/features/dashboard/data/models/user_model.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_event.dart';
import 'package:dms/features/dashboard/presentation/bloc/user_state.dart';

import '../../../../core/mock/users_mock_data.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<AddUser>(_addUser);
    on<UpdateUser>(_updateUser);
    on<LoadUsers>(_loadUsers);
    on<DeleteUser>(_deleteUser);
    on<SelectUser>(_selectUser);
    on<SearchUsers>(_searchUser);
    on<AddUserEvent>(_addUserState);
  }

  List<UserModel> _users = UserMockData.users;

  FutureOr<void> _addUser(AddUser event, Emitter<UserState> emit) async {
    _users.add(event.user);
    emit(UserLoaded(users: List.from(_users)));
  }

  FutureOr<void> _updateUser(UpdateUser event, Emitter<UserState> emit) async {
    _users = _users.map((u) => u.id == event.user.id ? event.user : u).toList();
    emit(UserLoaded(users: List.from(_users)));
  }

  FutureOr<void> _loadUsers(LoadUsers event, Emitter<UserState> emit) async {
    emit(UserLoading());
    await Future.delayed(const Duration(milliseconds: 2000), () {
      emit(UserLoaded(users: List.from(_users)));
    });
  }

  FutureOr<void> _deleteUser(DeleteUser event, Emitter<UserState> emit) async {
    _users.removeWhere((u) => u.id == event.id);
    emit(UserLoaded(users: List.from(_users)));
  }

  FutureOr<void> _selectUser(SelectUser event, Emitter<UserState> emit) async {
    emit(UserLoaded(users: List.from(_users), selectedUser: event.user));
  }

  FutureOr<void> _searchUser(SearchUsers event, Emitter<UserState> emit) async {
    final query = event.query.toLowerCase();
    final filtered = _users.where((user) => user.name.toLowerCase().contains(query)).toList();
    emit(UserLoaded(users: filtered, selectedUser: state.selectedUser));
  }

  FutureOr<void> _addUserState(AddUserEvent event, Emitter<UserState> emit) async {
    emit(AddUserState());
  }
}
