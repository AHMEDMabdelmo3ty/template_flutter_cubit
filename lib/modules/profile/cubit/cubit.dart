import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/user_image/user_image.dart';
import '../../../models/user_profile/user_profile.dart';
import 'states.dart';

class UserProfileCubit extends Cubit<UserProfileStates> {
  UserProfileCubit() : super(UserProfileInitialState());
  static UserProfileCubit get(context) => BlocProvider.of(context);


}
