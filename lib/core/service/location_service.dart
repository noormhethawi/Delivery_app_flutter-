import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../const_data/const_data.dart';
import 'my_service.dart';
import 'package:geocoding/geocoding.dart' as geo;

class LocationService extends GetxController {
  Location location = Location();
  late MyService myService;

  @override
  onInit() {
    super.onInit();
    myService = Get.find();
  }

  Future<bool> checkAndRequestLocationService() async {
    bool isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        return false;
      }
    }
    return true;
  }

  Future<bool> checkAndRequestLocationPermission() async {
    var permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      return false;
    }
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      return permissionStatus == PermissionStatus.granted;
    }
    return true;
  }

  void getRealTimeLocationData(void Function(LocationData)? onData) {
    location.onLocationChanged.listen(onData);
  }

  Future<LocationData?> getCurrentLocation() async {
    myService = Get.find<MyService>();
    var hasPermission = await checkAndRequestLocationPermission();
    if (hasPermission) {
      LocationData? locationData = await location.getLocation();
      if (locationData != null) {
        ConstData.currentLatitude = locationData.latitude;
        ConstData.currentLongitude = locationData.longitude;
        await Get.find<MyService>()
            .sharedPreferences
            .setDouble('latitude', locationData.latitude!);
        await Get.find<MyService>()
            .sharedPreferences
            .setDouble('longitude', locationData.longitude!);
      }
      return locationData;
    }
    return null;
  }

  Future<void> loadCoordinates() async {
    myService = Get.find<MyService>();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ConstData.currentLatitude =
        Get.find<MyService>().sharedPreferences.getDouble('latitude');
    ConstData.currentLongitude =
        Get.find<MyService>().sharedPreferences.getDouble('longitude');
  }

  Future<String> getLocationName(double latitude, double longitude) async {
    try {
      List<geo.Placemark> placemarks =
          await geo.placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        geo.Placemark place = placemarks[0];
        return '${place.locality}, ${place.administrativeArea}';
      } else {
        return 'لم يتم العثور على موقع';
      }
    } catch (e) {
      print(
          'خطأ أثناء الحصول على اسم الموقع: $e'); // طباعة الخطأ لمزيد من التفاصيل
      return 'خطأ: ${e.toString()}';
    }
  }
}
