import 'package:get/get.dart';

class OnboardController extends GetxController {
  // Example: Reactive property to manage navigation logic or state
  var currentPage = 0.obs;

  // Example: Update current page (e.g., for a slider)
  void updatePage(int index) {
    currentPage.value = index;
  }
}
