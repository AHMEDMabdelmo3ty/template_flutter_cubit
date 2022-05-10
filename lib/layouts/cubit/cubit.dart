import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_flutter_cubit/layouts/cubit/states.dart';

import '../../modules/Settings/Settings.dart';
import '../../modules/home/home_screen.dart';
import '../../modules/profile/profile_screen.dart';


class AppCubit extends Cubit<AppStates> {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _connectionSubscription;

  AppCubit() : super(AppInitialState(ConnectionStatus.online)){
    _connectionSubscription = _connectivity.onConnectivityChanged.listen((_) => _checkInternetConnection());
    _checkInternetConnection();
  }

  static AppCubit get(context) => BlocProvider.of(context);


  Future<void> _checkInternetConnection() async {
    try {
      // Sometimes the callback is called when we reconnect to wifi, but the internet is not really functional
      // This delay try to wait until we are really connected to internet
      await Future.delayed(const Duration(seconds: 2));
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        emit(ConnectionStatusOnlineState());
      } else {
        emit(ConnectionStatusOfflineState());
      }
    } on SocketException catch (_) {
      emit(ConnectionStatusOfflineState());
    }
  }

  @override
  Future<void> close() {
    _connectionSubscription.cancel();
    return super.close();
  }

  int currentIndex = 1;

  List<Widget> bottomScreens = [
    Settings(),
    HomeScreen(),
    ProfileScreen(),
  ];
  List<Widget> buildScreens() {
    return [
      const Settings(),
      HomeScreen(),
      ProfileScreen(),
    ];
  }

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

  Locale lang = const Locale('en', 'EG');

  void changeLang() {
    if (lang == const Locale('en', 'US')) {
      //lang = Locale('ar', 'EG');
      emit(AppChangeLanState());

      // print(lang.toString());
    } else {
      lang = const Locale('en', 'US');
      // print(lang.toString());
      emit(AppChangeLanState());
    }

    emit(AppChangeLanState());
  }


}

enum ConnectionStatus {
  online,
  offline,
}
