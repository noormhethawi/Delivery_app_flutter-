import 'package:flutter/material.dart';
import '../../core/const_data/app_colors.dart';
import '../../core/const_data/text_style.dart';
import '../../core/service/media_query.dart';
import '../core/const_data/my_size.dart';

class RewardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String points;
  final String icon;
  final VoidCallback? onPointsTap;

  RewardCard({
    required this.title,
    required this.subtitle,
    required this.points,
    required this.icon,
    this.onPointsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: MediaQueryUtil.screenHeight * 0.01),
      height: MediaQueryUtil.screenHeight * 0.15,
      width: MediaQueryUtil.screenWidth * 0.89,
      decoration: BoxDecoration(
          color: AppColors.itemOrderColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey,
              offset: Offset(MySize.x3, MySize.y4),
              blurRadius: MySize.blurRadius10,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(14))
      ),
      child: Card(
        color: AppColors.itemOrderColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation:0,
        shadowColor: AppColors.Shadwo.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(MediaQueryUtil.screenWidth * 0.04),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                width: MediaQueryUtil.screenWidth * 0.19,
                height: MediaQueryUtil.screenHeight * 0.1,
              ),
              SizedBox(width: MediaQueryUtil.screenWidth * 0.04),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: FontStyles.textStyle3,
                      ),
                      SizedBox(height: MediaQueryUtil.screenHeight * 0.01),
                      Text(
                        subtitle,
                        style: FontStyles.textStyle7,
                      ),
                      SizedBox(height: MediaQueryUtil.screenHeight * 0.01),
                      GestureDetector(
                        onTap: onPointsTap,
                        child: Text(
                          points,
                          style: FontStyles.textStyle7.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
