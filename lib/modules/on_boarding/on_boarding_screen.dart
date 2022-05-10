import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quds_interactive/quds_interactive.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../layouts/home_layout.dart';
import '../../shared/components/components.dart';
import '../../shared/network/local/cache_helper.dart';
import '../../shared/styles/colors.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.body,
    required this.title,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/boarding_one.png',
        body: 'Boarding_Model_body_1',
        title: 'title1'),
    BoardingModel(
        image: 'assets/images/boarding_two.png',
        body: 'Boarding_Model_body_2',
        title: 'title2'),
    BoardingModel(
        image: 'assets/images/boarding_three.png',
        body: 'Boarding_Model_body_3',
        title: 'title3'),
    BoardingModel(
        image: 'assets/images/boarding_four.png',
        body: 'Boarding_Model_body_4',
        title: 'title4'),
  ];

  bool isLast = false;

  void submit() {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value) {
        // ignore: prefer_const_constructors
        NavigateAndFinish(context, HomeLayout());
      }
    });
  }

  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          QudsTranslation.currLanguage!.langName.toString() == 'العربية'
              ? TextDirection.rtl
              : TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0.0,
          actions: [
            defaultTextButton(
              function: submit,
              text: 'skip'.tr,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: boardController,
                  itemBuilder: (context, index) =>
                      buildOnBoardingItem(boarding[index]),
                  itemCount: boarding.length,
                  onPageChanged: (int inndex) {
                    if (inndex == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: defaultColor,
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                      spacing: 5.0,
                    ),
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      if (isLast) {
                        submit();
                      } else {
                        boardController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOnBoardingItem(BoardingModel model) => Directionality(
        textDirection:
            QudsTranslation.currLanguage!.langName.toString() == 'العربية'
                ? TextDirection.rtl
                : TextDirection.ltr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image(
                image: AssetImage(model.image),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              model.title.tr,
              style: GoogleFonts.balsamiqSans(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                model.body.tr,
                style: GoogleFonts.akayaTelivigala(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      );
}
