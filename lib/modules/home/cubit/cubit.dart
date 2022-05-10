import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class UsersCubit extends Cubit<UsersStates> {
  UsersCubit() : super(UsersInitialState());

  static UsersCubit get(context) => BlocProvider.of(context);

 
}
