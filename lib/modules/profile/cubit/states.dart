abstract class UserProfileStates {}

class UserProfileInitialState extends UserProfileStates {}

class UserProfileSuccessState extends UserProfileStates {}

class UserProfileErrorState extends UserProfileStates {
  String errorr;
  UserProfileErrorState(this.errorr);
}

