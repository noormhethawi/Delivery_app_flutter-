import 'package:get/get.dart';

class CustomSelectCardController extends GetxController {
  // Observable to hold the selected choice index
  var selectedChoiceIndex = (-1).obs;

  // Method to update the selected choice index
  void updateSelectedIndex(int index) {
    selectedChoiceIndex.value = index;
  }
}
