import 'package:flutter/material.dart';
import 'package:focalx_project/core/const_data/app_colors.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/my_size.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/const_data/text_style.dart';
import '../../../../core/service/media_query.dart';
import '../../../../widget/button.dart';
import '../controller/signIn_controller.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryUtil.init(context);
    return GetBuilder<SignInController>(
      init: SignInController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.itemOrderColor,
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQueryUtil.screenWidth * 0.02),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    top: MediaQueryUtil.screenHeight * 0.10,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding:EdgeInsets.only(
                              right: MediaQueryUtil.screenWidth * 0.27,
                              bottom: MediaQueryUtil.screenHeight * 0.01
                          ),
                          child: Text(
                            MyText.welcomeText,
                            textAlign: TextAlign.center,
                            style: FontStyles.onBoardText,
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: controller.phoneController,
                          onChanged: (value) {
                            controller.phoneNumber.value = value;
                            controller.validatePhoneNumber(value);
                          },
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            counter: Obx(() {
                              return SizedBox(
                                width: MediaQueryUtil.screenWidth * 5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(MyText.numbers,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: FontStyles.signInNum),
                                    const SizedBox(
                                      width: 1,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: controller.isPhoneValid.value
                                          ? Colors.green
                                          : Colors.grey.withOpacity(
                                          MySize.withOpacity04),
                                    ),
                                  ],
                                ),
                              );
                            }),
                            hintText: MyText.hintText,
                            hintStyle: FontStyles.hintstyle,
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(183, 0, 58, 106),
                                width: 3.0,
                              ),
                            ),
                          ),
                          maxLength: 10,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.03,
                    top: MediaQueryUtil.screenHeight * 0.65,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQueryUtil.screenWidth * 0.7,
                          child:  Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: MyText.confirmNoor,
                                  style: FontStyles.confirmstyle,
                                ),
                                TextSpan(
                                  text: MyText.rules1,
                                  style: FontStyles.rules,
                                ),
                                TextSpan(
                                  text: MyText.NULLMore,
                                ),
                                TextSpan(
                                  text: MyText.rules2,
                                  style: FontStyles.rules,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Centering the button
                  Positioned(
                      left: MediaQueryUtil.screenWidth * 0.03,
                      bottom: MediaQueryUtil.screenHeight * 0.099,
                      width: MediaQueryUtil.screenWidth * 0.9,
                      child: Center(
                        child: Container(
                          width: MediaQueryUtil.screenWidth*0.8,
                          height: MediaQueryUtil.screenHeight*0.06,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [AppColors.primary, AppColors.cardIcon],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(MySize.borderRadius10),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              controller.onAcceptPressed();
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(MySize.borderRadius10),
                            ),
                            child: Obx(() => controller.isLoading.value
                                ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                                : Text(
                              MyText.agree,
                              style: FontStyles.verifyPhoneTextButton(context),
                            )),
                          ),
                        ),
                      )
                  ),
                  //MyText.agree
                  Positioned(
                    left: MediaQueryUtil.screenWidth * 0.05,
                    bottom: MediaQueryUtil.screenHeight * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.84,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQueryUtil.screenHeight * 0.02),
                      child: GestureDetector(
                        onTap: () {
                          controller.onGuestPressed();
                        },
                        child:  Center(
                          child: Text(
                            MyText.visit,
                            style: FontStyles.vistiTStyle,
                          ),
                        ),
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
