import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class UserProfileCubit extends Cubit<UserProfileStates> {
  UserProfileCubit() : super(UserProfileInitialState());
  static UserProfileCubit get(context) => BlocProvider.of(context);


}
