import 'package:flutter/material.dart';
import 'package:focalx_project/core/service/media_query.dart';
import '../../core/const_data/app_colors.dart';
import '../../core/const_data/my_size.dart';
import '../../core/const_data/text_style.dart';

class Customselectcard extends StatelessWidget {
  final String text;
  final List<String> choicesList;
  final int selectedIndex;
  final Function(int) onSelected;

  const Customselectcard({
    super.key,
    required this.text,
    required this.choicesList,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryUtil.init(context);
    return Container(

      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding:  EdgeInsets.symmetric(horizontal: MediaQueryUtil.screenWidth*0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            textAlign: TextAlign.right,
            style:  FontStyles.textStyleRestaurantNameRes_Loc,),
           SizedBox(
            height: MediaQueryUtil.screenHeight*0.01,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Wrap(
              spacing: 3,
              runSpacing: 8,
              textDirection: TextDirection.rtl,
              children: List.generate(choicesList.length, (index) {
                return SizedBox(
                  width:  MediaQueryUtil.screenWidth*0.18,
                  height:  MediaQueryUtil.screenHeight*0.05,
                  child: ChoiceChip(
                    color: MaterialStateProperty.all(AppColors.white),
                    showCheckmark: false,
                    avatar: null,
                    label: Text(
                      choicesList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQueryUtil.screenWidth*0.026,
                        fontFamily: 'NotoSansArabic',
                        color: selectedIndex == index
                            ? const Color.fromARGB(255, 63, 130, 184)
                            : const Color.fromARGB(255, 114, 104, 104),
                      ),
                    ),
                    selectedColor: const Color.fromARGB(255, 245, 245, 245),
                    onSelected: (value) {
                      if (value) {
                        onSelected(index); // Notify the controller
                      }
                    },
                    elevation: MySize.elevation3,
                    selected: selectedIndex == index,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: selectedIndex == index
                            ? const Color.fromARGB(255, 63, 130, 184)
                            : AppColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(MySize.borderRadius7),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
