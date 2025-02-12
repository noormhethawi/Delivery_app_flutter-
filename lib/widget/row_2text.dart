import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/const_data/text_style.dart';

class Row2Text extends StatelessWidget {
  final String? text1;
  final String? text2;
  final Function()? OnpressedText2;

  Row2Text({
    required this.text1,
    required this.text2,
    required this.OnpressedText2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl,
      children: [
        Text(
          text1!,
          style: FontStyles.textStyleRow_Text1,
        ),
        TextButton(
            onPressed: OnpressedText2,
            child: Text(text2!, style: FontStyles.textStyleRow_Text2)),
      ],
    );
  }
}
