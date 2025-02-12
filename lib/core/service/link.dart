import '../const_data/const_data.dart';
class AppLink {
  //remote address
  static String appRoot = "https://delivery.focal-x.com";

  static String imageWithRoot = "$appRoot/storagr";
  static String imageWithoutRoot = "$appRoot";
  static String serverApiRoot = "$appRoot/api";

  //Auth
  static String addCity = "$serverApiRoot/set-city";
  static String verificationCode = "$serverApiRoot/verification-code";
  static String logOut = "$serverApiRoot/logout";
  static String register = "$serverApiRoot/register";
  //Category
  static String category = "$serverApiRoot/categories";
  //Sub Categories
  static String subCategories = "$serverApiRoot/sub/categories";
  //Meals
  static String allMeals = "$serverApiRoot/meals";
  static String meals = "$serverApiRoot/meals/2";
  //Order
  static String getOrder = "$serverApiRoot/orders";
  static String createOrder = "$serverApiRoot/orders";
  static String updateOrder = "$serverApiRoot/orders/8";
  static String deleteOrder = "$serverApiRoot/orders/8";
  //Restaurants
  static String Restaurants = "$serverApiRoot/restaurants";

  static Map<String, String> getHeader() {
    Map<String, String> mainHeader = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Requested-With': 'XMLHttpRequest',
    };
    return mainHeader;
  }

  static Map<String, String> getHeaderToken() {
    Map<String, String> mainHeader = {
      'Authorization': 'Bearer${ConstData.accessToken}'
    };
    return mainHeader;
  }
}
