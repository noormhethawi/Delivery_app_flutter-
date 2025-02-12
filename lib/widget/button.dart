import 'package:flutter/material.dart';
import '../../core/const_data/app_colors.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const Button({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(screenWidth / 41.2)),
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.cardIcon],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: screenWidth / 1.31,
        textColor: AppColors.background,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: screenWidth / 22.9,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
