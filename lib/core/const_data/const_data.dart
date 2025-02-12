import 'dart:async';

class ConstData {
  static bool isLogIn = false;
  static bool isVIP = false;
  static String? token = " ";
  static String? accessToken = " ";
  static String fcm_token = "";
  static String userID = "";
  static const String map_key = " ";

  static double? currentLatitude;
  static double? currentLongitude;
  static String? myLocationName;
  static double? newLatitude;
  static double? newLongitude;
  static String myNewLocationName = "";

  static Future<void> UpdateToken() async {}

  static Future<void> startTokenUpdater() async {
    Timer.periodic(Duration(seconds: 20), (timer) {
      UpdateToken();
    });
  }
}