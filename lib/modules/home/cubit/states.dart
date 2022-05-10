abstract class UsersStates {}

class UsersInitialState extends UsersStates {}

class UserProfileSuccessState extends UsersStates {}

class UserProfileErrorState extends UsersStates {
  String errorr;
  UserProfileErrorState(this.errorr);
}
