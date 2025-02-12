import 'package:flutter/material.dart';
import 'package:focalx_project/widget/general/paymentChip.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../core/const_data/my_text.dart';
import '../../core/const_data/text_style.dart';
import '../../core/service/media_query.dart';
import '../../view/noor/payment/controller/paymentController.dart';

class Paymentcontainer extends StatelessWidget {
  const Paymentcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    final PaymentController controller = Get.put(PaymentController());

    return Positioned(
      child: Container(
        width: MediaQueryUtil.screenWidth * 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Paymentchip(
              wid: 92,
              text1: MyText.payment1,
              text2: MyText.payment2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          MyText.payment3,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "NotoSansArabic",
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Obx(
                        () => Radio(
                          value: controller.options[0],
                          groupValue: controller.selectedOption.value,
                          onChanged: (value) {
                            controller.updateSelectedOption(value!);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          MyText.payment4,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "NotoSansArabic",
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Obx(
                        () => Radio(
                          value: controller.options[1],
                          groupValue: controller.selectedOption.value,
                          onChanged: (value) {
                            controller.updateSelectedOption(value!);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 39),
                Text(
                  MyText.payment5,
                  style: FontStyles.PaymentchipText,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Pinput(
                  length: 3,
                  onChanged: (value) {
                    controller.updatePinputValue(value);
                  },
                ),
                const SizedBox(width: 60),
                Text(
                  MyText.payment6,
                  style: FontStyles.PaymentchipText,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            const Paymentchip(
              wid: 92,
              text1: MyText.payment7,
              text2: MyText.payment8,
            ),
            const Paymentchip(
              wid: 98,
              text1: MyText.payment9,
              text2: MyText.payment10,
            ),
            const Paymentchip(
              wid: 125,
              text1: MyText.payment11,
              text2: MyText.payment12,
            ),
            const Paymentchip(
              wid: 100,
              text1: MyText.payment13,
              text2: MyText.payment14,
            ),
          ],
        ),
      ),
    );
  }
}
