import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quds_interactive/quds_interactive/quds_interactive_app.dart';
import 'package:quds_interactive/quds_translation/internals.dart';

import 'states.dart';

class SettingCubit extends Cubit<SettingStates> {
  SettingCubit() : super(SettingInitialState());

  static SettingCubit get(context) => BlocProvider.of(context);

  void changeLanuage(BuildContext context) {
    QudsTranslation.showLanguagesSelectionBorderSheet(context, onChanged: () {
      QudsInteractiveApp.qudsAppController.saveStateInSharedPreferences();
      emit(ChangeLanguageSuccessState());
    });
    emit(ChangeLanguageSuccessState());
  }
}
