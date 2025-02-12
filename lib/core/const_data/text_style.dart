import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../service/media_query.dart';
import 'app_colors.dart';

class FontStyles {
  static TextStyle headerChallenges(BuildContext context) {
    MediaQueryUtil.init(context);
    return TextStyle(
      fontSize: MediaQueryUtil.screenWidth * 0.05,
      fontFamily: "NotoSansArabic",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle verifyPhone(BuildContext context) {
    return TextStyle(
      color: AppColors.text,
      fontSize: MediaQueryUtil.screenWidth * 0.045,
      fontFamily: "NotoSansArabic",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle titleChallenges(BuildContext context) {
    return TextStyle(
      color: AppColors.text1,
      fontSize: MediaQueryUtil.screenWidth * 0.04,
      fontFamily: "NotoSansArabic",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle tabBar(BuildContext context) {
    return TextStyle(
      fontSize: MediaQueryUtil.screenWidth * 0.04,
      fontFamily: "NotoSansArabic",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle cardTitleChallenges(BuildContext context) {
    return TextStyle(
      color: AppColors.text1,
      fontSize: MediaQueryUtil.screenWidth * 0.036,
      fontFamily: "NotoSansArabic",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle cardSubTitleChallenges(BuildContext context) {
    return TextStyle(
      fontSize: MediaQueryUtil.screenWidth * 0.033,
      color: AppColors.text1,
      fontFamily: "NotoSansArabic",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle scoretitlePanel1(BuildContext context) {
    return TextStyle(
      color: AppColors.text1,
      fontSize: MediaQueryUtil.screenWidth * 0.04,
      fontWeight: FontWeight.w500,
      fontFamily: "NotoSansArabic",
    );
  }

  static TextStyle scorePanelCardLeading(BuildContext context) {
    return TextStyle(
      fontSize: MediaQueryUtil.screenWidth * 0.033,
      fontWeight: FontWeight.w500,
      color: AppColors.primary,
      fontFamily: "NotoSansArabic",
    );
  }

  static TextStyle verifyPhone2(BuildContext context) {
    return TextStyle(
        fontSize: MediaQueryUtil.screenWidth * 0.033,
        fontWeight: FontWeight.w500,
        color: AppColors.text,
        fontFamily: "NotoSansArabic",
        decoration: TextDecoration.underline,
        decorationColor: AppColors.text,
        decorationThickness: 1.6);
  }

  static TextStyle verifyPhoneTextButton(BuildContext context) {
    return TextStyle(
      fontSize: MediaQueryUtil.screenWidth * 0.045,
      fontWeight: FontWeight.w600,
      color: AppColors.background,
      fontFamily: "NotoSansArabic",
    );
  }

  static var semiBold20black = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.text,
    fontFamily: "Noto Sans Arabic",
  );
  static var semiBold20blue = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.primary,
    fontFamily: "Inter",
  );
  static var semiBold16gray = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.text1,
    fontFamily: "Noto Sans Arabic",
  );
  static var semiBold16black = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.text,
    fontFamily: "Noto Sans Arabic",
  );
  static var semiBold18white = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.background,
    fontFamily: "Noto Sans Arabic",
  );
  static var semiBold18blue = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.blueTextColor,
    fontFamily: "Noto Sans Arabic",
  );
  static var semiBold14blue = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.02,
    color: AppColors.primary,
    fontFamily: "Inter",
  );
  static var semiBold12gray = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.01,
    color: AppColors.text1,
    fontFamily: "Noto Sans Arabic",
  );

  static var regular16black = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.text,
    fontFamily: "Noto Sans Arabic",
  );
  static var regular13gray = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.text2,
    fontFamily: "Inter",
  );
  static var regular13grayNoto = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.015,
    color: AppColors.text2,
    fontFamily: "Noto Sans Arabic",
  );
  static var regular13gray3Noto = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.015,
    color: AppColors.backMinis,
    fontFamily: "Noto Sans Arabic",
  );
  static var regular14gray = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.025,
    color: AppColors.text1,
    fontFamily: "Noto Sans Arabic",
  );
  static var regular12gray = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.01,
    color: AppColors.text1,
    fontFamily: "Noto Sans Arabic",
  );

  static var medium20blue = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.primary,
    fontFamily: "Noto Sans Arabic",
  );
  static var medium16black = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.text,
    fontFamily: "Noto Sans Arabic",
  );
  static var medium16black2 = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.black2TextColor,
    fontFamily: "Poppins",
  );
  static var medium12blue = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.01,
    color: AppColors.primary,
    fontFamily: "Inter",
  );

  static var light18gray = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.text1,
    fontFamily: "Noto Sans Arabic",
  );

  static var textStyle1 = TextStyle(
    color: AppColors.text,
    fontFamily: 'NotoSansArabic',
    fontSize: MediaQueryUtil.screenWidth * 0.05,
    fontWeight: FontWeight.w600,
  );
  static var textStyle2 = TextStyle(
    color: AppColors.text1,
    fontFamily: 'NotoSansArabic',
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontWeight: FontWeight.normal,
  );
  static var textStyle3 = TextStyle(
    color: AppColors.text,
    fontFamily: 'NotoSansArabic',
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontWeight: FontWeight.w500,
  );
  static var textStyle4 = TextStyle(
    color: AppColors.text,
    fontFamily: 'NotoSansArabic',
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontWeight: FontWeight.w600,
  );
  static var textStyle5 = TextStyle(
    color: AppColors.text,
    fontFamily: 'NotoSansArabic',
    fontSize: MediaQueryUtil.screenWidth * 0.06,
    fontWeight: FontWeight.w600,
  );
  static var textStyle6 = TextStyle(
    color: AppColors.text,
    fontFamily: 'NotoSansArabic',
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontWeight: FontWeight.w400,
  );
  static var textStyle7 = TextStyle(
    color: AppColors.text,
    fontFamily: 'NotoSansArabic',
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontWeight: FontWeight.w400,
  );

  static var textStyle15 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQueryUtil.screenWidth * 0.05,
  );

  static var textStylemainTextHead = TextStyle(
    color: AppColors.mainTextHead,
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontFamily: "NotoSansArabicSemi",
    fontWeight: FontWeight.w700,
  );
  static var textStylesubTextHead = TextStyle(
    color: AppColors.subTextHead,
    fontSize: MediaQueryUtil.screenWidth * 0.025,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w100,
  );
  static var textStylePointNSA_M_5B = TextStyle(
    color: AppColors.text1,
    fontSize: 9,
    fontFamily: "NotoSansArabicSemiMedium",
  );
  static var textStylePointNSA_5B = TextStyle(
    color: AppColors.text1,
    fontSize: 9,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );
  static var textStyleTextNSA_5B_16 = TextStyle(
    color: AppColors.text1,
    fontSize: 15,
    height: 2,
    fontFamily: "NotoSansArabic",
    wordSpacing: 2
  );
  static var textStyleTextI_P57_14 = TextStyle(
    color: AppColors.cardIcon,
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontFamily: "NotoSansArabic",
  );
  static var textStyleRow_Text1 = TextStyle(
    color: AppColors.text,
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w600,
  );
  static var textStyleRow_Text2 = TextStyle(
    color: AppColors.primary,
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w600,
  );
  static var textStyleRes_Name = TextStyle(
    color: AppColors.text,
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );
  static var textStyleRete = TextStyle(
    color: AppColors.backMinis,
    fontSize: 10,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w400,
  );
  static var textStyleConvers = TextStyle(
    color: AppColors.text2,
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w400,
  );
  static var textStyleNSA500_14 = TextStyle(
    color: AppColors.text1,
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );

  static var textStyleInter400_12 = TextStyle(
    color: AppColors.textB3,
    fontSize: MediaQueryUtil.screenWidth * 0.032,
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
  );
  static var textStyleInter400_14_A0 = TextStyle(
    color: AppColors.backMinis,
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
  );

  static var textStyleNSA500_18 = TextStyle(
    color: AppColors.text1,
    fontSize: MediaQueryUtil.screenWidth * 0.05,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );
  static var textStylePrice = TextStyle(
    color: AppColors.primary,
    fontSize: 11,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );
  static var textStyleMealName = TextStyle(
    color: AppColors.text,
    fontSize: 13,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );
  static var textStyleReteRes_Res = TextStyle(
    color: AppColors.text2,
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w400,
  );

  static var textStyleRestaurantNameRes_Loc = TextStyle(
    color: AppColors.text,
    fontSize: MediaQueryUtil.screenWidth * 0.05,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w600,
  );
  static var textStyleRestaurantLocationRes_Loc = TextStyle(
    color: AppColors.text1,
    fontSize: MediaQueryUtil.screenWidth * 0.045,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );
  static var textStyleRestaurantDistanceRes_Loc = TextStyle(
    color: AppColors.primary,
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );

  static var textStyleFoodRes_Chi = TextStyle(
    color: AppColors.text1,
    fontSize: MediaQueryUtil.screenWidth * 0.047,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );
  static var textStylePurpleRes_Chi = TextStyle(
    color: AppColors.primary,
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w500,
  );

  static var textStyleOffersAmmount = TextStyle(
    color: AppColors.black,
    fontSize: MediaQueryUtil.screenWidth * 0.023,
    fontFamily: "NotoSansArabic",
    fontWeight: FontWeight.w400,
  );

  static var textStyleBottomNavBarNam = TextStyle(
    color: AppColors.stepper,
    fontSize: 10,
    fontFamily: "NotoSansArabicSemiMedium",
  );

  static var textstyleresturantname = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontWeight: FontWeight.w500,
    color: AppColors.resturantnamecolor,
  );
  static var resturantdistance = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontWeight: FontWeight.w400,
    color: AppColors.text2,
  );
  static var raitngtext = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontWeight: FontWeight.w400,
    color: AppColors.text2,
  );
  static var mealname = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontWeight: FontWeight.w500,
    color: AppColors.resturantnamecolor,
  );
  static var pricetext = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.035,
    fontWeight: FontWeight.w400,
    color: AppColors.text2,
  );
  static var favoritetext = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.05,
    color: AppColors.text,
    fontWeight: FontWeight.w600,
  );
  static var profile = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.05,
    color: AppColors.text,
    fontWeight: FontWeight.w600,
  );
  static var name = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.text1,
    fontWeight: FontWeight.w600,
  );
  static var editprofile = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  );
  static var infoprofile = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.text,
    fontWeight: FontWeight.w600,
  );
  static var settings = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.045,
    color: AppColors.text,
    fontWeight: FontWeight.w600,
  );
  static var share = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.045,
    color: AppColors.text,
    fontWeight: FontWeight.w600,
  );
  static var language1 = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.arabiccolor,
    fontWeight: FontWeight.w400,
  );

  static const textStyleArabic = TextStyle(
    color: AppColors.arabfontcolor,
    fontFamily: "NotoSansArabic",
  );
  static var notificationtext = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.text,
    fontWeight: FontWeight.w400,
  );
  static var linkTextStyle = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.primary,
    fontWeight: FontWeight.w400,
  );
  static var timeTextStyle = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.025,
    color: AppColors.text2,
    fontWeight: FontWeight.w400,
  );
  static var older = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    color: AppColors.text,
    fontWeight: FontWeight.w600,
  );
  static var dialotext = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.032,
    color: AppColors.text2,
    fontWeight: FontWeight.w400,
  );
  static var dialotext2 = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.032,
    color: AppColors.text1,
    fontWeight: FontWeight.w400,
  );
  static var dialotext1 = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.text1,
    fontWeight: FontWeight.w500,
  );
  static var confirm = TextStyle(
    fontFamily: "NotoSansArabic",
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    color: AppColors.confirm,
    fontWeight: FontWeight.w500,
  );

  static const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  static const fillColor = Color.fromRGBO(243, 246, 249, 0);
  static const borderColor = Color.fromRGBO(23, 171, 144, 0.4);
  static var onBoardText1 = TextStyle(
    color: const Color(0xFF5B5B5B),
    fontSize: 30,
    fontFamily: 'Noto Sans Arabic',
    height: 0,
  );

  static TextStyle mainTextStyle = TextStyle(
      color: AppColors.text,
      fontSize: MediaQueryUtil.screenWidth / 18.8,
      fontWeight: FontWeight.w600);
  static TextStyle lightTextStyle = TextStyle(
      color: AppColors.text1, fontSize: MediaQueryUtil.screenWidth / 25.75);
  static TextStyle buttonTextStyle = TextStyle(
      color: AppColors.itemOrderColor,
      fontSize: MediaQueryUtil.screenWidth / 22.9,
      fontWeight: FontWeight.w600);
  static TextStyle skipTextStyle = TextStyle(
      color: AppColors.primary,
      fontSize: MediaQueryUtil.screenWidth / 22.9,
      fontWeight: FontWeight.w600);
  static TextStyle itemOrderStyle = TextStyle(
      color: AppColors.text1,
      fontSize: MediaQueryUtil.screenWidth / 29.42,
      fontWeight: FontWeight.w500);

  static var onBoardText = TextStyle(
    color: AppColors.cardIcon,
    fontSize: 35,
    height: 1,
    fontFamily: "NotoSansArabic",
  );
  final onBoardTextgrad = GradientText(
    'Gradient Text Example',
    style: TextStyle(
      fontSize: MediaQueryUtil.screenWidth * 0.1,
    ),
    colors: const [
      AppColors.primary,
      AppColors.cardIcon,
      Colors.teal,
    ],
  );

  static var onBoardText2 = TextStyle(
    color: const Color(0xFF5B5B5B),
    fontSize: 20,
    fontFamily: 'Noto Sans Arabic',
    height: 0,
  );
  static var textStyle15Noor = TextStyle(
    fontWeight: FontWeight.w500,
    color: const Color.fromARGB(255, 65, 63, 63),
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontFamily: "NotoSansArabic",
  );
  static var PaymentchipText = TextStyle(
    fontWeight: FontWeight.w500,
    color: const Color.fromARGB(255, 65, 63, 63),
    fontSize: MediaQueryUtil.screenWidth * 0.025,
    fontFamily: "NotoSansArabic",
  );

  static var textStyleBottomNavBarNamNoor = TextStyle(
    color: const Color.fromARGB(255, 195, 188, 188),
    fontSize: MediaQueryUtil.screenWidth * 0.027,
    fontFamily: "NotoSansArabic",
  );

  static var paymentTitle = TextStyle(
    fontWeight: FontWeight.w500,
    color: const Color.fromARGB(255, 0, 0, 0),
    fontSize: MediaQueryUtil.screenWidth * 0.045,
    fontFamily: "NotoSansArabic",
  );

  static var signInNum = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontFamily: 'Noto Sans Arabic-Meduim',
    color: Colors.black,
  );
  static var hintstyle = TextStyle(
    fontSize: MediaQueryUtil.screenWidth * 0.03,
    fontFamily: 'Noto Sans Arabic-Meduim',
    color: const Color(0xFFE1E1E1),
  );

  static var confirmstyle = TextStyle(
    color: const Color(0xFF2A2A2A),
    fontSize: MediaQueryUtil.screenWidth * 0.032,
    fontFamily: 'Noto Sans Arabic-Regular',
    height: 0,
  );

  static var rules = TextStyle(
    color: const Color(0xFF2A2A2A),
    fontSize: MediaQueryUtil.screenWidth * 0.04,
    fontFamily: 'Noto Sans Arabic-Regular',
    height: 0,
    decoration: TextDecoration.underline,
    decorationColor: Colors.black,
    decorationThickness: 2,
  );
  static var vistiTStyle = TextStyle(
    color: const Color(0xFF5A6CEA),
    fontSize: MediaQueryUtil.screenWidth * 0.045,
    fontFamily: 'Noto Sans Arabic',
    height: 0,
  );
}
