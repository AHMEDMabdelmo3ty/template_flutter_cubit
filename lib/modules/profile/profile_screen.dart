
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quds_interactive/quds_interactive.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class ProfileScreen extends StatelessWidget {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return  BlocProvider(
            create: (context) => UserProfileCubit(),
            child: BlocConsumer<UserProfileCubit, UserProfileStates>(
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
