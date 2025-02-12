import 'package:flutter/material.dart';
import '../core/const_data/app_colors.dart';
import '../core/const_data/text_style.dart';
import '../core/service/media_query.dart';

class CustomMaterialButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const CustomMaterialButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQueryUtil.screenWidth / 41.2)),
        gradient: const LinearGradient(
          colors: [
            AppColors.primary,
            AppColors.cardIcon,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.infinity,
        textColor: AppColors.itemOrderColor,
        child: Text(title, style: FontStyles.buttonTextStyle),
      ),
    );
  }
}
