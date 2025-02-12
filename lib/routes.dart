import 'package:dartz/dartz.dart';
import 'package:focalx_project/core/service/routes.dart';
import 'package:focalx_project/view/ali/point/screen/point_screen.dart';
import 'package:focalx_project/view/ali/ponit_vip/screen/ponitv1.dart';
import 'package:focalx_project/view/haydar/bottom_nav_bar/screen/bottom_nav_bar_screen.dart';
import 'package:focalx_project/view/haydar/home/screen/home_screen.dart';
import 'package:focalx_project/view/haydar/result_chicken/screen/result_chicken_screen.dart';
import 'package:focalx_project/view/haydar/result_location/screen/result_location_screen.dart';
import 'package:focalx_project/view/haydar/result_restaurant/screen/result_restaurant_screen.dart';
import 'package:focalx_project/view/mohammad/favoritescreen/screen/favoritescreen.dart';
import 'package:focalx_project/view/mohammad/notification/screen/motification_screen.dart';
import 'package:focalx_project/view/noor/filter/screen/filter.dart';
import 'package:focalx_project/view/noor/filterFood/screen/filterFood.dart';
import 'package:focalx_project/view/noor/onBoard/screen/onBoardScreen.dart';
import 'package:focalx_project/view/noor/payment/screen/payment.dart';
import 'package:focalx_project/view/noor/signIn/screen/signIn.dart';
import 'package:focalx_project/view/sahar/add_new_address/screen/add_new_address_screen.dart';
import 'package:focalx_project/view/sahar/address/screen/address_screen.dart';
import 'package:focalx_project/view/sahar/confirm_address/screen/confirm_address_screen.dart';
import 'package:focalx_project/view/sahar/descripitio_food/screen/descripitio_food_screen.dart';
import 'package:focalx_project/view/samar/my_points/screen/my_points.dart';
import 'package:focalx_project/view/samar/resert/screen/verify_phone_screen.dart';
import 'package:focalx_project/view/yoshaa/confirmation/screen/confirmation.dart';
import 'package:focalx_project/view/yoshaa/feedback/screen/feedback.dart';
import 'package:focalx_project/view/yoshaa/order/screen/order.dart';
import 'package:focalx_project/view/yoshaa/tracking/screen/tracking.dart';

import 'package:get/get.dart';

import 'view/mohammad/profilescreen/screen/profile_screen.dart';

List<GetPage<dynamic>>? routes = [
  //samar
  GetPage(name: Routes.myPoints, page: () => const MyPoints()),


  //haydar
  GetPage(name: "/homeScreen", page: () => HomeScreen()),
  GetPage(name: "/bottomNavBar", page: () => BottomNavBarScreen()),
  GetPage(name: "/resultChickenScreen", page: () => ResultChickenScreen()),
  GetPage(name: "/resultLocationScreen", page: () => ResultLocationScreen()),
  GetPage(
      name: "/resultRestaurantScreen",
      page: () => ResultRestaurantScreen(
            ResDistance: '',
            ResRate: '',
            ResName: '',
          )),
  //mohmmad
  GetPage(name: '/profileScreen', page: () => ProfileScreen()),
  GetPage(
    name: "/favoriteScreen",
    page: () => FavoriteScreen(),
  ),
  GetPage(
    name: "/notificationsPage",
    page: () => NotificationsPage(),
  ),

  //Ali
  GetPage(name: "/pointV", page: () => PointV()),
  GetPage(name: "/PointVip", page: () => PointVip()),
  // GetPage(
  //   name: "/confirmation2",
  //   page: () => Confirmation2(),
  // ),
  //sahar
  GetPage(name: Routes.addressScreen, page: () => const AddressScreen()),
  GetPage(
      name: "/addNewAddressScreen", page: () => const AddNewAddressScreen()),
  GetPage(
      name: "/confirmAddressScreen", page: () => const ConfirmAddressScreen()),
  GetPage(
      name: "/descripitioFoodScreen",
      page: () => const DescripitioFoodScreen()),

  //yoshaa
  GetPage(name: "/confirmation1", page: () => const Confirmation1()),
  GetPage(name: "/tracking", page: () => const Tracking()),
  GetPage(name: "/feedback", page: () => const FeedBack()),
  GetPage(name: "/order", page: () => OrderO()),

  //noor
  GetPage(name: "/filterScreen", page: () => FilterScreen()),
  GetPage(name: "/filterFood", page: () => FilterFood()),
  GetPage(name: "/Onboardscreen", page: () => OnboardScreen()),
  GetPage(name: "/payment", page: () => Payment()),
  GetPage(name: "/signIn", page: () => SignIn()),
];
