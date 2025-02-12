import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/app_colors.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/service/media_query.dart';
import '../../../../widget/button.dart';
import '../../../../widget/general/customAppBar.dart';
import '../../../../widget/general/customSelectCard.dart';
import '../../../../widget/search.dart';
import '../../../mohammad/notification/screen/motification_screen.dart';
import '../controller/filteringcontrol.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryUtil.init(context);
    // Instantiate the controller
    return GetBuilder<FilterScreenController>(
      init: FilterScreenController(),
      builder: (controller) {
        return Scaffold(
          appBar: Customappbar(
            text: MyText.customAppBarLabel,
            onPressed: () {
              Get.to(() => NotificationsPage());
            },
          ),
          backgroundColor: AppColors.itemOrderColor,
          body: controller.isLoading
              ? Center(child: CircularProgressIndicator(
            color: AppColors.primary,
          )) :SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQueryUtil.screenWidth * 0.02),
              child: Stack(
                children: [
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.06,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    child: MySearch(
                      controller: SearchController(),
                    ),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.06,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    top: MediaQueryUtil.screenHeight * 0.1,
                    child: Obx(() {
                      return Customselectcard(
                        choicesList: controller.choicesList,
                        text: MyText.selectcardlabel,
                        selectedIndex: controller.selectedRestaurant.value,
                        onSelected: (index) =>
                            controller.updateSelectedRestaurant(index),
                      );
                    }),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    top: MediaQueryUtil.screenHeight * 0.32,
                    child: Obx(() {
                      return Customselectcard(
                        choicesList: controller.choicesList1,
                        text: MyText.selectcardlabel2,
                        selectedIndex: controller.selectedLocation.value,
                        onSelected: (index) =>
                            controller.updateSelectedLocation(index),
                      );
                    }),
                  ),
                  Positioned(
                    right: MediaQueryUtil.screenWidth * 0.05,
                    width: MediaQueryUtil.screenWidth * 0.8,
                    top: MediaQueryUtil.screenHeight * 0.5,
                    child: Obx(() {
                      return Customselectcard(
                        choicesList: controller.choicesList2,
                        text: MyText.selectcardlabel3,
                        selectedIndex: controller.selectedFood.value,
                        onSelected: (index) =>
                            controller.updateSelectedFood(index),
                      );
                    }),
                  ),
                  Positioned(
                    left: MediaQueryUtil.screenWidth * 0.09,
                    top: MediaQueryUtil.screenHeight * 0.82,
                    width: MediaQueryUtil.screenWidth * 0.72,
                    child: Button(
                      onPressed: () {
                        controller.onSearchPressed();
                      },
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
