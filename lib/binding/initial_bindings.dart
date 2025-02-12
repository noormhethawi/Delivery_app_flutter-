import 'package:focalx_project/view/mohammad/notification/controller/notificationcontroller.dart';
import 'package:get/get.dart';
import '../core/class/crud.dart';
import '../view/mohammad/favoritescreen/controller/favoritecontroller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.put(NotificationsController());
     Get.put(FavoritesController());
  }
}
