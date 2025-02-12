import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../core/const_data/app_colors.dart';
import '../core/const_data/my_text.dart';
import '../core/const_data/text_style.dart';

class MySearch extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onSearch;
  final Widget? child;

  const MySearch({
    Key? key,
    required this.controller,
    this.onSearch,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (child != null) child!,
        Expanded(
          child: TextFormField(
            controller: controller,
            textInputAction: TextInputAction.search,
            onFieldSubmitted: onSearch,
            decoration: InputDecoration(
              hintText: MyText.hinText,
              hintStyle: FontStyles.textStyleBottomNavBarNam,
              hintTextDirection: TextDirection.rtl,
              suffixIcon: const Icon(
                Ionicons.search_outline,
                color: AppColors.text1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
