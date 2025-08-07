import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'adding_user_state.dart';

class AddingUserCubit extends Cubit<AddingUserState> {
  AddingUserCubit() : super(AddingUserState(isAddingUser: false));

  void addUser() {
    emit(state.copyWith(isAddingUser: !state.isAddingUser));
  }
}
