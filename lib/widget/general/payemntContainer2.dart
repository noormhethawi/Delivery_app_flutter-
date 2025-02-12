import 'package:flutter/material.dart';
import 'package:focalx_project/core/const_data/my_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../core/service/media_query.dart';
import '../../view/noor/payment/controller/paymentController.dart';

class Paymentcontainer2 extends StatelessWidget {
  const Paymentcontainer2({super.key});

  @override
  Widget build(BuildContext context) {
    final PaymentController controller = Get.put(PaymentController());

    return Positioned(
      top: MediaQueryUtil.screenHeight * 0.5,
      child: Container(
        width: MediaQueryUtil.screenWidth * 0.9,
        height: MediaQueryUtil.screenHeight * 0.3,
        padding:
            EdgeInsets.symmetric(horizontal: MediaQueryUtil.screenWidth * 0.05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              MyText.payment15,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: MediaQueryUtil.screenWidth * 0.045,
                fontFamily: "NotoSansArabic",
              ),
            ),

            // Row containing the radio buttons and label
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      MyText.payment16,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "NotoSansArabic",
                        fontSize: MediaQueryUtil.screenWidth * 0.035,
                      ),
                    ),
                  ),
                  Obx(
                    () => Radio(
                      value: controller.options1[0],
                      groupValue: controller.selectedPayOption.value,
                      onChanged: (value) {
                        controller.updateSelectedPayOption(value!);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      MyText.payment17,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "NotoSansArabic",
                        fontSize: MediaQueryUtil.screenWidth * 0.035,
                      ),
                    ),
                  ),
                  Obx(
                    () => Radio(
                      value: controller.options1[2],
                      groupValue: controller.selectedPayOption.value,
                      onChanged: (value) {
                        controller.updateSelectedPayOption(value!);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      MyText.payment18,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "NotoSansArabic",
                        fontSize: MediaQueryUtil.screenWidth * 0.035,
                      ),
                    ),
                  ),
                  Obx(
                    () => Radio(
                      value: controller.options1[1],
                      groupValue: controller.selectedPayOption.value,
                      onChanged: (value) {
                        controller.updateSelectedPayOption(value!);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
