import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTab;
  final Color borderColor;
  final Color? backgroundColor;
  final String text;
  final TextStyle textStyle;
  final Gradient? gradient;
  final bool leftAndRight;
  final Widget? widget;

  const CustomButton({
    super.key,
    required this.onTab,
    required this.borderColor,
    required this.text,
    required this.textStyle,
    this.backgroundColor,
    this.gradient,
    this.widget,
    required this.leftAndRight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        height: 46,
        color: backgroundColor,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(10),
          gradient: gradient,
        ),
        child: leftAndRight
            ? widget
            : Center(
                child: Text(
                  text,
                  style: textStyle,
                ),
              ),
      ),
    );
  }
}
