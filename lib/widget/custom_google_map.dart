import 'package:flutter/material.dart';
import 'package:focalx_project/view/sahar/address/controller/address_controller.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatelessWidget {
  const CustomGoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AddressController(),
      builder: (addressController) {
        return GoogleMap(
          zoomControlsEnabled: false,
          markers: addressController.markers,
          initialCameraPosition: addressController.initialCameraPosition,
          onMapCreated: (controller) {
            addressController.googleMapController = controller;
          },
        );
      },
    );
  }
}
