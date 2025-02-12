import 'package:get/get.dart';

import '../../../../core/class/crud.dart';
import '../../../../core/class/status_request.dart';
import '../../../../core/const_data/const_data.dart';
import '../../../../core/service/link.dart';
import '../../../../model/category/category_model.dart';

class FilterFoodController extends GetxController {
  // Observables to store the selected choice for each category
  var selectedBreakfast = (-1).obs; // Index of selected restaurant
  var selectedDiner = (-1).obs; // Index of selected location
  var selectedSweets = (-1).obs; // Index of selected food

    List<String> choicesList = [
      "بيض",
      "حمص",
      "فطائر",
      "فول",
    ];
    List<String> choicesList1 = [];
    List<String> choicesList2 = [
      "كيك",
      "كاتو",
      "بقلاوة",
      "بان كيك",
      "براونيز",
      "كنافة",
      "بوظة",
      "كيك",
    ];

  CategoryModel? categories;
  StatusRequest statusRequest = StatusRequest.loading;
  var selectedCategoryId;
  bool isLoading = false;
  @override
  void onInit() {
    super.onInit();
    getSubCategories(1);
  }

  Future<void> getSubCategories(int categoryId) async {
    isLoading = true;
    update();
    Crud crud = Crud();
    var response = await crud.getData("${AppLink.subCategories}", {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${ConstData.accessToken}',
    });
    response.fold(
          (failure) {
        isLoading = false;
        statusRequest = StatusRequest.failure;
        update(); // تحديث حالة الفشل
      },
          (data) {
        handleLunchDataSuccess(data); // معاجة البيانات الناجحةل
      },);}
  void handleLunchDataSuccess(dynamic data) {
    isLoading = false;
    if (data != null && data is Map<String, dynamic> && data.containsKey('data')) {
      var jsonData = data['data'];
      if (jsonData != null && jsonData is List) {
        choicesList1 = jsonData.map((e) => e['name'].toString()).toList();
      }
      statusRequest = StatusRequest.success;
    } else {
      statusRequest = StatusRequest.failure;
      Get.snackbar('Error', 'Unexpected data format');
    }
    update(); // تحديث الواجهة بالبيانات الجديدة
  }

  // Method to update the selected restaurant
  void updateSelectedBreakfast(int index) {
    selectedBreakfast.value = index;
  }

  // Method to update the selected location
  void updateSelectedDiner(int index) {
    selectedDiner.value = index;
  }

  // Method to update the selected food
  void updateSelectedSweets(int index) {
    selectedSweets.value = index;
  }


  // Method to handle the "search" button press
  void onSearchPressed() {
    // Navigate to the search results screen
    Get.toNamed('/searchScreen', arguments: {
      'selectedBreakfast': selectedBreakfast.value,
      'selectedLocation': selectedDiner.value,
      'selectedFood': selectedSweets.value,
    });
  }
}
