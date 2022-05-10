import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quds_interactive/quds_translation/internals.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return  BlocProvider(
      create: (context) => UsersCubit(),
      child: BlocConsumer<UsersCubit, UsersStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Directionality(
            textDirection:
            QudsTranslation.currLanguage!.langName.toString() ==
                'العربية'
                ? TextDirection.rtl
                : TextDirection.ltr,
            child: const SafeArea(
              child: Scaffold(
                resizeToAvoidBottomInset: true,
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    )
    ;
  }
}
