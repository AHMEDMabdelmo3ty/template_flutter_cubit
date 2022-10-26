import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quds_interactive/quds_interactive.dart';
import 'layouts/cubit/cubit.dart';
import 'layouts/cubit/states.dart';
import 'layouts/home_layout.dart';
import 'modules/on_boarding/on_boarding_screen.dart';
import 'shared/components/constant.dart';
import 'shared/network/local/cache_helper.dart';
import 'shared/network/remote/dio_helper.dart';
import 'translations/ar.dart';
import 'translations/en.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await QudsInteractiveApp.initialize(
    supportedLanguageCodes: ['en', 'ar_eg'],
    additionalDictionaries: {'ar': arabicSupport, 'en': englishSupport},
    customFonts: {'ar': 'Cairo'},
    // defaultFont: 'Cairo'
  );
  await DioHelper.init();
  await CacheHelper.init();


  late Widget widget;
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  ID = CacheHelper.getData(key: 'token');
  if (onBoarding != null) {
    if (ID != null) {
      widget = const HomeLayout();
    } else {
      widget = const HomeLayout();
    }
  } else {
    widget = const OnBoardingScreen();
  }

  runApp(MyApp(widget));
}

class MyApp extends StatelessWidget {
  final Widget startWidget;
  const MyApp(this.startWidget, {Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),

      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return QudsInteractiveApp(
            debugShowCheckedModeBanner: false,
            builder: (c) => MaterialApp(
              debugShowCheckedModeBanner: false,

              home: startWidget,
            ),
          );
        },
      ),
    );
  }
}
