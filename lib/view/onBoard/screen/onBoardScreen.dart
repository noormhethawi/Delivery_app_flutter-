import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/const_data/text_style.dart';
import '../../../../core/service/media_query.dart';
import '../../../../widget/button.dart';
import '../../signIn/screen/signIn.dart';
import '../controller/onboard_controller.dart';
import '/core/const_data/app_colors.dart';
import '/core/const_data/app_image.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryUtil.init(context);
    return GetBuilder<OnboardController>(
      init: OnboardController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.itemOrderColor,
          body: SingleChildScrollView(
            child: Container(
              width: MediaQueryUtil.screenWidth,
              height: MediaQueryUtil.screenHeight,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQueryUtil.screenWidth * 0.02),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: MediaQueryUtil.screenHeight * 0.1,
                    width: MediaQueryUtil.screenWidth * 1.03,
                    child: Text(
                      MyText.welcomeText,
                      textAlign: TextAlign.center,
                      style: FontStyles.onBoardText,
                    ),
                  ),
                  Positioned(
                    top: MediaQueryUtil.screenHeight * 0.2,
                    width: MediaQueryUtil.screenWidth * 0.99,
                    child: Image.asset(
                      AppImages.onboardshape,
                    ),
                  ),
                  Positioned(
                    top: MediaQueryUtil.screenHeight * 0.7,
                    width: MediaQueryUtil.screenWidth * 0.94,
                    child: Text(
                      MyText.welcomeText1,
                      textAlign: TextAlign.center,
                      style: FontStyles.onBoardText1,
                    ),
                  ),
                  Positioned(
                    top: MediaQueryUtil.screenHeight * 0.76,
                    width: MediaQueryUtil.screenWidth * 0.94,
                    child: Text(
                      MyText.welcomeText2,
                      textAlign: TextAlign.center,
                      style: FontStyles.onBoardText2,
                    ),
                  ),
                  // Centering the button
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: MediaQueryUtil.screenHeight * 0.05, // Adjust based on your layout
                    child: Center(
                      child: Button(
                        onPressed: () {
                          Get.offAll(() => const SignIn());
                        },
                        buttonText: MyText.welcomeButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}