import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/app_colors.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/const_data/text_style.dart';
import '../../../../core/service/media_query.dart';
import '../../../../widget/button.dart';
import '../../../../widget/general/customAppBar.dart';
import '../../../../widget/general/customSelectCard.dart';
import '../../../../widget/search.dart';
import '../../../haydar/result_chicken/screen/result_chicken_screen.dart';
import '../../../haydar/result_location/screen/result_location_screen.dart';
import '../../../mohammad/notification/screen/motification_screen.dart';
import '../controller/filterFoodControl.dart';

class FilterFood extends StatelessWidget {
  const FilterFood({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryUtil.init(context);
    return GetBuilder<FilterFoodController>(
      init: FilterFoodController(),
      builder: (controller) {
        return Scaffold(
          appBar: Customappbar(
            text: MyText.customAppBarLabel,
            onPressed: () {
              Get.to(() => NotificationsPage());
            },
          ),
          backgroundColor: AppColors.itemOrderColor,
          body:  controller.isLoading
              ? Center(child: CircularProgressIndicator(
            color: AppColors.primary,
          ))
              :SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQueryUtil.screenHeight * 0.02),
              child: Stack(
                children: [
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    child: MySearch(
                      controller:SearchController(),
                    ),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    top: MediaQueryUtil.screenHeight * 0.07,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          label: Text(
                            MyText.filterFood1,
                            style: FontStyles.textStyleBottomNavBarNamNoor,
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: AppColors.text2,
                          ),
                        ),
                        TextButton.icon(
                          label: Text(
                            MyText.filterFood2,
                            style: FontStyles.textStyleBottomNavBarNamNoor,
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          MyText.restaurantName,
                          style: FontStyles.textStyle15,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    top: MediaQueryUtil.screenHeight * 0.15,
                    child: Obx(() {
                      // Food filter
                      return Customselectcard(
                        choicesList: controller.choicesList,
                        text: MyText.customselectcardlabel,
                        selectedIndex: controller.selectedBreakfast.value,
                        onSelected: (index) =>
                            controller.updateSelectedBreakfast(index),
                      );
                    }),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    top: MediaQueryUtil.screenHeight * 0.29,
                    child: Obx(() {
                      // Food filter
                      return Customselectcard(
                        choicesList: controller.choicesList1,
                        text: MyText.customselectcardlabel2,
                        selectedIndex: controller.selectedDiner.value,
                        onSelected: (index) =>
                            controller.updateSelectedDiner(index),
                      );
                    }),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    top: MediaQueryUtil.screenHeight * 0.60,
                    child: Obx(() {
                      // Food filter
                      return Customselectcard(
                        choicesList: controller.choicesList2,
                        text: MyText.customselectcardlabel3,
                        selectedIndex: controller.selectedSweets.value,
                        onSelected: (index) =>
                            controller.updateSelectedSweets(index),
                      );
                    }),
                  ),
                  Positioned(
                    left: MediaQueryUtil.screenWidth * 0.09,
                    top: MediaQueryUtil.screenHeight * 0.82,
                    width: MediaQueryUtil.screenWidth * 0.72,
                    child: Button(
                      onPressed: () {
                        Get.off(()=>ResultLocationScreen());                      },
                      buttonText: MyText.filterFoodButton,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
