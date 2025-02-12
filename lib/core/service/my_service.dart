import 'package:focalx_project/core/service/shared_preferences_key.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../const_data/const_data.dart';

class MyService extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyService> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  Future<void> loadCoordinates() async {
    ConstData.currentLatitude = sharedPreferences.getDouble('latitude');
    ConstData.currentLongitude = sharedPreferences.getDouble('longitude');
  }

  Future<void> saveAccessToken(String token) async {
    await sharedPreferences.setString(SharedPreferencesKey.tokenKey, token);
    ConstData.token = token;
  }

  Future<void> saveIsLogin(String userId) async {
    await sharedPreferences.setString(SharedPreferencesKey.isLoginKey, userId);
    ConstData.userID = userId;
  }

  String? getAccessToken() {
    return sharedPreferences.getString(SharedPreferencesKey.tokenKey);
  }

  String? getIsLogin() {
    return sharedPreferences.getString(SharedPreferencesKey.isLoginKey);
  }

  Future<void> saveAddress(String address) async {
    await sharedPreferences.setString('savedAddress', address);
    ConstData.myNewLocationName = address; // Update ConstData as well
  }

  Future<void> saveLogin(bool val) async {
    await sharedPreferences.setBool('savedLogin', val);
    ConstData.isLogIn = val;
  }

  String? getSavedAddress() {
    return sharedPreferences.getString('savedAddress');
  }

}

initialServices() async {
  await Get.putAsync(() => MyService().init());
}
