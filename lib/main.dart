import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:focalx_project/routes.dart';
import 'package:focalx_project/view/haydar/bottom_nav_bar/screen/bottom_nav_bar_screen.dart';
import 'package:focalx_project/view/mohammad/notification/controller/notificationcontroller.dart';
import 'package:focalx_project/view/noor/onBoard/screen/onBoardScreen.dart';
import 'package:get/get.dart';
import 'binding/initial_bindings.dart';
import 'core/const_data/app_theme.dart';
import 'core/service/my_service.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  MyService();
  await initialServices();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Haydar Thaeer Abdo',
        initialBinding: InitialBindings(),
        getPages: routes,
        theme: AppTheme,
        home: Get.find<MyService>().getIsLogin() == null
            ? const OnboardScreen()
            : const BottomNavBarScreen());
  }
}
