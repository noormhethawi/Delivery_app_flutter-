import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/app_colors.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/const_data/text_style.dart';
import '../../../../core/service/media_query.dart';
import '../../../../widget/button.dart';
import '../../../../widget/general/payemntContainer.dart';
import '../../../../widget/general/payemntContainer2.dart';
import '../controller/paymentController.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryUtil.init(context);
    return GetBuilder<PaymentController>(
      init: PaymentController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.itemOrderColor,
            elevation: 0,
            automaticallyImplyLeading: false,
            actions: <Widget>[
              Text(MyText.screenTitle, style: FontStyles.paymentTitle),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_outlined,
                  color: Color.fromARGB(162, 0, 0, 0),
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              SizedBox(width: MediaQueryUtil.screenWidth * 0.08),
            ],
          ),
          backgroundColor: AppColors.itemOrderColor,
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQueryUtil.screenWidth * 0.02),
              height: MediaQueryUtil.screenHeight*0.88,
              child: Stack(
                children: [
                  const Paymentcontainer(),
                  Positioned(
                    left: MediaQueryUtil.screenWidth * 0.09,
                    top: MediaQueryUtil.screenHeight * 0.8,
                    width: MediaQueryUtil.screenWidth * 0.72,
                    child: Button(
                      onPressed: () {
                        print(
                            'Selected options: ${controller.selectedOption.value} + ${controller.selectedPayOption.value} + ${controller.pinputValue.value}');
                        controller.onPayPressed();
                      },
                      buttonText: MyText.screenTitle,
                    ),
                  ),
                  const Paymentcontainer2(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
