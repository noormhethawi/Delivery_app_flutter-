import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:focalx_project/core/class/status_request.dart';
import 'check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(
      String linkUrl, Map data, Map<String, String> header) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkUrl),
          body: jsonEncode(data),
          headers: header,
        );
        print(response);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      print(_);
      return const Left(StatusRequest.serverFailure);
    }
  }
  Future<Either<StatusRequest, dynamic>> getData(
      String url, Map<String, String>? headers) async {
    try {
      if (await checkInternet()) {
        print('Sending GET request to: $url');
        print('Headers: $headers');
        var response = await http.get(
          Uri.parse(url),
          headers: headers,
        );

        print('Response Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          var responseBody = jsonDecode(response.body);
          print(response.body);
          return Right(responseBody);
        } else {
          print('Server Error: ${response.statusCode}');
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (error) {
      print('Exception: $error');
      return const Left(StatusRequest.serverFailure);
    }
  }
  Future<Either<StatusRequest, Map<String, dynamic>>> sendData(
      String linkUrl,
      Map<String, dynamic> data,
      Map<String, String> headers,
      {String method = 'POST'}) async {
    try {
      if (await checkInternet()) {
        final response = await (method.toUpperCase() == 'PUT'
            ? http.put(Uri.parse(linkUrl), body: jsonEncode(data), headers: headers)
            : http.post(Uri.parse(linkUrl), body: jsonEncode(data), headers: headers));

        print("Response Status Code: ${response.statusCode}");

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map<String, dynamic> responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          print("Error Response: ${response.body}");
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      print("Exception: $e");
      return const Left(StatusRequest.serverFailure);
    }
  }

  Future<Either<StatusRequest, Map<String, dynamic>>> deleteData(
      String linkUrl, Map<String, String> headers) async {
    try {
      if (await checkInternet()) {
        final response = await http.delete(
          Uri.parse(linkUrl),
          headers: headers,
        );
        print("Response Status Code: ${response.statusCode}");
        if (response.statusCode == 200) {
          Map<String, dynamic> responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          print("Error Response: ${response.body}");
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      print("Exception: $e");
      return const Left(StatusRequest.serverFailure);
    }
  }

  Future<Either<StatusRequest, Map<String, dynamic>>> putData(String linkUrl,
      Map<String, dynamic> data, Map<String, String> headers) async {
    try {
      if (await checkInternet()) {
        final response = await http.put(
          Uri.parse(linkUrl),
          body: jsonEncode(data),
          headers: headers,
        );
        print("Response Status Code: ${response.statusCode}");
        if (response.statusCode == 200) {
          Map<String, dynamic> responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          print("Error Response: ${response.body}");
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      print("Exception: $e");
      return const Left(StatusRequest.serverFailure);
    }
  }
}
