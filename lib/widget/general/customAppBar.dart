import 'package:flutter/material.dart';
import 'package:focalx_project/core/service/media_query.dart';
import 'package:get/get.dart';
import '../../core/const_data/app_colors.dart';
import '../../core/const_data/app_image.dart';
import '../../core/const_data/my_size.dart';
import '../../core/const_data/text_style.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Function()? onPressed;
  const Customappbar({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding:   EdgeInsets.only(left: MediaQueryUtil.screenWidth*0.05),
        child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              AppImages.IconHomeHeader,
              color: AppColors.primary,
              size: MySize.iconLg,
            )),
      ),
      backgroundColor: AppColors.itemOrderColor,
      elevation: 0,
      actions: <Widget>[
        Text(
          text,
          style:  FontStyles.textStyleRestaurantNameRes_Loc
          ),
        IconButton(
          icon: const Icon(
            Icons.arrow_forward_outlined,
            color: AppColors.text,
            size: MySize.iconLg,
          ),
          onPressed: () {
            Get.back();
          },
        ),
         SizedBox(
          width:MediaQueryUtil.screenWidth*0.06,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
