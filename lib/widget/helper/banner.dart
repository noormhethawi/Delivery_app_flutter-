import 'package:flutter/material.dart';
import 'package:focalx_project/core/const_data/my_text.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/service/media_query.dart';
import '/core/const_data/app_colors.dart';

class banner extends StatelessWidget {
  final String firstLine;

  const banner({
    super.key,
    required this.firstLine,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          firstLine,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: const Color(0xFF2B2B2B),
            fontSize: MediaQueryUtil.screenWidth * 0.08,
            fontFamily: 'Raleway',
            height: 0,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          MyText.banner,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
            height: 0,
            fontSize: MediaQueryUtil.screenWidth * 0.04,
          ),
        ),
      ],
    );
  }
}
