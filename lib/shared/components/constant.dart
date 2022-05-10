


import 'package:template_flutter_cubit/modules/home/home_screen.dart';

import '../../layouts/home_layout.dart';
import '../network/local/cache_helper.dart';
import 'components.dart';

void SignOut(context) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {
      NavigateAndFinish(context,  const HomeLayout());
    }
  });
}

void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  // ignore: avoid_print
  pattern.allMatches(text).forEach((element) => print(element.group(0)));
}

String? ID = '';
String? FORGET = '';
String? LANG = '';
String IamedUser = 'https://sbobaapp.com/sboba/api/user/Uploads/';


