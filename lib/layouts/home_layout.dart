import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:template_flutter_cubit/shared/styles/colors.dart';

import '../shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is ConnectionStatusOnlineState) {
            showToast(
                message: 'the internet is online',
                toastStates: ToastStates.SUCCESS);
          }
          if (state is ConnectionStatusOfflineState) {
            showCupertinoModalPopup(

                barrierDismissible: false,
                builder: (BuildContext context) {
                  return Center(
                    child: Container(
                      color: Colors.white54,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.4,
                      child: Scaffold(
                        backgroundColor: Colors.white38,
                        body: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.35,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.35,
                                child: Shimmer.fromColors(
                                  baseColor: Colors.grey,
                                  highlightColor: defaultColor,
                                  child: Shimmer.fromColors(
                                      baseColor: Colors.grey,
                                      highlightColor: defaultColor,
                                      child: Image.asset(
                                          'assets/images/logo_s.png')),
                                ),
                              ), Text(
                                'please check th internet',
                                style: GoogleFonts.balsamiqSans(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),),
                  )
                  ;
                }, context: context);
            showToast(
                message: 'the internet is offline',
                toastStates: ToastStates.EROOR);
          }
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          // PersistentTabController _controller;

          // _controller = PersistentTabController(initialIndex: 1);

          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              height: 55,
              backgroundColor: defaultColor,
              index: cubit.currentIndex,
              // ignore: prefer_const_literals_to_create_immutables
              items: <Widget>[
                const Icon(
                  Icons.settings,
                  size: 25,
                ),
                const Icon(
                  Icons.home,
                  size: 25,
                ),
                const Icon(
                  Icons.person,
                  size: 25,
                ),
              ],
              onTap: (index) {
                cubit.changeBottomNav(index);
              },
            ),
          );
        });
  }
}
