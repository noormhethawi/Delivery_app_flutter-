import 'package:focalx_project/core/service/routes.dart';
import 'package:focalx_project/view/yoshaa/confirmation/screen/confirmation.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  // Radio button options
  final List<String> options = ["لا", "نعم"];
  final List<String> options1 = [
    "نقدا",
    "عن طريق بنك بيمو",
    "عن طريق سيرتيل كاش"
  ];

  // Observables to track the selected options and Pinput value
  var selectedOption = "لا".obs;
  var selectedPayOption = "نقدا".obs;
  var pinputValue = "".obs; // Observable for the Pinput value

  // Function to update the selected options
  void updateSelectedOption(String option) {
    selectedOption.value = option;
  }

  void updateSelectedPayOption(String option) {
    selectedPayOption.value = option;
  }

  // Function to update the Pinput value
  void updatePinputValue(String value) {
    pinputValue.value = value;
  }

  void onPayPressed() {
    // Navigate to the search results screen
   Get.to(()=>Confirmation1());
    resetValues();
  }

  void resetValues() {
    selectedOption.value = "لا"; // Default for the radio button
    selectedPayOption.value = "نقدا"; // Default for the payment option
    pinputValue.value = ""; // Clear the Pinput field
  }

  @override
  void onClose() {
    resetValues();
    super.onClose();
  }
}
