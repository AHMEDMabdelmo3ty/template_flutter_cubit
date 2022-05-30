import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:video_player/video_player.dart';

import 'states.dart';

class UsersCubit extends Cubit<UsersStates> {
  UsersCubit() : super(UsersInitialState());

  static UsersCubit get(context) => BlocProvider.of(context);
String url='https://whitecompressor.com/storage/files/videoplayback.mp4';
  List<CardItem> items = [
    IconTitleCardItem(
      text: "Alarm",
      iconData: Icons.access_alarms,
    ),
    IconTitleCardItem(
      text: "Add",
      iconData: Icons.add,
    ),
    IconTitleCardItem(
      text: "Call",
      iconData: Icons.add_call,
    ),
    IconTitleCardItem(
      text: "WiFi",
      iconData: Icons.wifi,
    ),
    IconTitleCardItem(
      text: "File",
      iconData: Icons.attach_file,
    ),
    IconTitleCardItem(
      text: "Air Play",
      iconData: Icons.airplay,
    ),
  ];

}
