// ignore_for_file: avoid_print, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quds_interactive/quds_interactive.dart';
import '../../shared/components/components.dart';
import '../../shared/components/constant.dart';
import '../../shared/styles/colors.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List<String> _locations = [
      'العربيه',
      'englISH',
    ]; // Option 2
    // ignore: unused_local_variable
    String selectedLocation = 'العربيه'; // Option 2
    final mq = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => SettingCubit(),
      child: BlocConsumer<SettingCubit, SettingStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Directionality(
            textDirection:
                QudsTranslation.currLanguage!.langName.toString() == 'العربية'
                    ? TextDirection.rtl
                    : TextDirection.ltr,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SettingsItemButton(mq, Icons.logout, 'Logout'.tr, () {
                      SignOut(context);
                    }),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
