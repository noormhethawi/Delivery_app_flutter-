import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/const_data/app_colors.dart';
import '../core/const_data/my_size.dart';
import '../core/service/media_query.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int)? Onpressed;
  final int? pageIndex;
  final List<BottomNavigationBarItem>? item;

  MyBottomNavBar(
      {required this.Onpressed, required this.pageIndex, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQueryUtil.screenWidth * 0.05,
          vertical: MediaQueryUtil.screenHeight * 0.03),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.black,
            offset: Offset(MySize.x, MySize.y),
            blurRadius: MySize.blurRadius20,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(MySize.borderRadius15),
        child: BottomNavigationBar(
          backgroundColor: AppColors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.primary,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: pageIndex!,
          onTap: Onpressed,
          items: item!,
        ),
      ),
    );
  }
}
