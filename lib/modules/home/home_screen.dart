import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:quds_interactive/quds_translation/internals.dart';
import '../../presentation/components/video/video.dart';
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
            child:  SafeArea(
              child: Scaffold(
                resizeToAvoidBottomInset: true,
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child:   Video.blocProvider(
                          // Normally you'll get both the url and the aspect ratio from your video meta data
                          UsersCubit.get(context).url,
                          aspectRatio: 1.77,
                          autoPlay: true,
                        ),
                      ),
                  HorizontalCardPager(
                    onPageChanged: (page) => print("page : $page"),
                    onSelectedItem: (page) => print("selected : $page"),
                    items:  UsersCubit.get(context).items,
                  )
                    ],
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
