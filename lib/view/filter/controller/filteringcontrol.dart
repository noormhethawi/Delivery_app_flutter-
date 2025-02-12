import 'package:focalx_project/view/haydar/result_location/screen/result_location_screen.dart';
import 'package:focalx_project/view/haydar/result_restaurant/screen/result_restaurant_screen.dart';
import 'package:get/get.dart';

import '../../../../core/class/crud.dart';
import '../../../../core/class/status_request.dart';
import '../../../../core/const_data/const_data.dart';
import '../../../../core/service/link.dart';
import '../../../../core/service/my_service.dart';
import '../../../../core/service/routes.dart';
import '../../../../model/category/category_model.dart';

class FilterScreenController extends GetxController {
  // Observables to store the selected choice for each category
  var selectedRestaurant = (-1).obs; // Index of selected restaurant
  var selectedLocation = (-1).obs; // Index of selected location
  var selectedFood = (-1).obs; // Index of selected food
    List<String> choicesList = [];
    List<String> choicesList1 = [">10km", "<10km", "1km"];
    List<String> choicesList2 = [];
  CategoryModel? categories;
  StatusRequest statusRequest = StatusRequest.loading;
  final MyService myServices = Get.find<MyService>();
  var selectedCategoryId;
  bool isLoading = false;
  @override
  void onInit() {
    super.onInit();
    loadInitialData();
  }

  Future<void> loadInitialData() async {
    await getCategories();
    if (categories != null && categories!.data.isNotEmpty) {
      // استدعاء البيانات الفرعية لأول تصنيف بشكل تلقائي
      var firstCategoryId = categories!.data.first.id;
      selectedCategoryId = firstCategoryId;
      await getSubCategories(firstCategoryId);
    }
  }

  Future<void> getCategories() async {
    isLoading = true;
    String? token = myServices.getAccessToken();
    statusRequest = StatusRequest.loading;
    update();

    Crud crud = Crud();
    var response = await crud.getData(AppLink.category,{
      ...AppLink.getHeader(),
      "Authorization": "Bearer $token",
    });
    response.fold(
          (failure) {
        handleFailure(failure);
      },
          (data) {
        handleCategorySuccess(data);
      },
    );
  }

  void handleCategorySuccess(dynamic data) {
    isLoading = false;
    if (data != null && data is Map<String, dynamic> && data.containsKey('data')) {
      var jsonData = data['data'];
      if (jsonData != null && jsonData is List) {
        categories = CategoryModel.fromJson({"data": jsonData, "message": data["message"]});
        choicesList = categories!.data.map((e) => e.name).toList();
        if (categories!.data.isNotEmpty) {
          selectedCategoryId = categories!.data.first.id;
        }
      }
      statusRequest = StatusRequest.success;
    } else {
      statusRequest = StatusRequest.failure;
      Get.snackbar('Error', 'Unexpected data format');
    }
    update();
  }

  Future<void> getSubCategories(int categoryId) async {
    isLoading = true;
    update();
    String? token = myServices.getAccessToken();
    Crud crud = Crud();
    var response = await crud.getData("${AppLink.subCategories}", {
      ...AppLink.getHeader(),
      "Authorization": "Bearer $token",
      'category_id': categoryId.toString(),
    });
    response.fold(
          (failure) {
        isLoading = false;
        statusRequest = StatusRequest.failure;
        update();
      },
          (data) {
        handleSubCategorySuccess(data);
      },
    );
  }

  void handleSubCategorySuccess(dynamic data) {
    isLoading = false;
    if (data != null && data is Map<String, dynamic> && data.containsKey('data')) {
      var jsonData = data['data'];
      if (jsonData != null && jsonData is List) {
        choicesList2 = jsonData.map((e) => e['name'].toString()).toList();
      }
      statusRequest = StatusRequest.success;
    } else {
      statusRequest = StatusRequest.failure;
      Get.snackbar('Error', 'Unexpected data format');
    }
    update();
  }

  void handleFailure(dynamic failure) {
    if (failure == StatusRequest.offlineFailure) {
      Get.snackbar('Error', 'Please check your internet connection.');
    } else {
      Get.snackbar('Error', 'Something went wrong.');
    }
    isLoading = false;
    statusRequest = StatusRequest.failure;
    update();
  }

  // Method to update the selected restaurant
  void updateSelectedRestaurant(int index) {
    selectedRestaurant.value = index;
    if (index != -1 && categories != null) {
      var categoryId = categories!.data[index].id;
      selectCategory(categoryId);
    }
  }

  void selectCategory(int? categoryId) {
    selectedCategoryId = categoryId;
    update();
    if (categoryId != null) {
      getSubCategories(categoryId);
    }
  }





  // Method to update the selected location
  void updateSelectedLocation(int index) {
    selectedLocation.value = index;
  }

  // Method to update the selected food
  void updateSelectedFood(int index) {
    selectedFood.value = index;
  }

  // Method to handle the "search" button press
  void onSearchPressed() {
    if (selectedRestaurant.value != -1) {
      Get.toNamed(Routes.resultRestaurantScreen);
    } else if (selectedLocation.value != -1) {
      Get.toNamed(Routes.resultLocationScreen);
    } else if (selectedFood.value != -1) {
      Get.toNamed(Routes.resultChickenScreen);
    } else {
      Get.toNamed(Routes.resultRestaurantScreen); // Default navigation
    }

    // Clear selections after navigation
    selectedRestaurant.value = -1;
    selectedLocation.value = -1;
    selectedFood.value = -1;
  }
}
