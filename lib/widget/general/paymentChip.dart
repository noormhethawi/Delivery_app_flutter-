import 'package:flutter/material.dart';
import '../../core/const_data/text_style.dart';
import '../../core/service/media_query.dart';

class Paymentchip extends StatelessWidget {
  final String text1, text2;
  final double wid;

  const Paymentchip(
      {super.key, required this.text1, required this.text2, required this.wid});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: MediaQueryUtil.screenHeight * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text2,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            width: wid,
          ),
          Text(
            text1,
            style: FontStyles.PaymentchipText,
            textDirection: TextDirection.rtl,
          )
        ],
      ),
    );
  }
}
