import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:focalx_project/core/const_data/my_text.dart';
import 'package:focalx_project/view/samar/resert/screen/verify_phone_screen.dart';
import 'package:get/get.dart';
import '../../../../core/class/crud.dart';
import '../../../../core/class/status_request.dart';
import '../../../../core/const_data/app_colors.dart';
import '../../../../core/const_data/const_data.dart';
import '../../../../core/service/link.dart';
import '../../../../core/service/my_service.dart';
import '../../../../core/service/routes.dart';

class SignInController extends GetxController {
  // Variables to manage state
  var phoneNumber = ''.obs; // Observable phone number
  var isPhoneValid = false.obs; // Observable to check if phone is valid
  final MyService myServices = Get.find<MyService>();
  Map<String, String> headers = AppLink.getHeader();
  final Crud _crud = Get.find<Crud>();
  String url = AppLink.register;
  RxBool isLoading = false.obs;

  // TextEditingController for the phone input field
  final TextEditingController phoneController = TextEditingController();

  // Function to validate phone number
  void validatePhoneNumber(String value) {
    // Check if the phone number is exactly 10 digits
    if (value.length == 10 && RegExp(r'^[0-9]+$').hasMatch(value)) {
      isPhoneValid.value = true;
    } else {
      isPhoneValid.value = false;
    }
  }

  void _setLoading(bool value) {
    isLoading.value = value;
    update();
  }

  // Function to handle the "موافق" button press
  void onAcceptPressed() async {
    if (isPhoneValid.value) {
      _setLoading(true);
      final fcmToken = await FirebaseMessaging.instance.getToken();
      if (fcmToken == null) {
        _setLoading(false);
        Get.snackbar('Error', 'Failed to get FCM token');
        return;
      }
      ConstData.fcm_token = fcmToken;
      Map<String, dynamic> requestData = {
        "phone": phoneController.text,
        "fcm_token": fcmToken,
      };
      print("Request Data: ${jsonEncode(requestData)}");
      print("Phone: ${phoneController.text}");
      print("FCM Token: $fcmToken");
      print("fcmToken=========================${ConstData.fcm_token}");

      Either<StatusRequest, dynamic> response = await _crud.postData(
        url,
        requestData,
        headers,
      );
      return response.fold(
            (status) {
          _setLoading(false);
          if (status == StatusRequest.offlineFailure) {
            Get.snackbar("Error", "You are offline");
          } else if (status == StatusRequest.serverFailure) {
            Get.snackbar('Error', 'log in failed');
          }
          return {};
        },
            (responseBody) {
          try {
            if (responseBody == null) {
              throw Exception('Empty response from server');
            }
            print("Response Body: $responseBody");

            if (responseBody.containsKey('data') &&
                responseBody['data'].containsKey('access_token')) {
              final accessToken = responseBody['data']['access_token'];
              final user = responseBody['data']['user'];
              final message = responseBody['message'];

              myServices.saveAccessToken(accessToken);
              myServices.saveIsLogin(ConstData.userID);
              print("User: $user");

              _setLoading(false);
              Get.to(() => VerifyPhoneScreen(num: phoneController.text));

              Get.snackbar('Success', message);
              print(responseBody);
              return responseBody;
            } else {
              throw Exception('Unexpected response structure');
            }
          } catch (e) {
            _setLoading(false);
            Get.snackbar('Error', 'Failed to process log in response: $e');
            print("============================================$e");
          }
        },
      );
    } else {
      // Show an error message if phone is invalid
      Get.snackbar(
        MyText.snackbarError,
        MyText.snackbarMessage,
        colorText: AppColors.cardIcon,
      );
      //Get.off(() => const HomeScreen());
    }
  }

  // Function to handle "متابعة كزائر"
  void onGuestPressed() {
    // Navigate to HomeScreen as a guest
    Get.offAllNamed(Routes.bottomNavBar);
  }
}
