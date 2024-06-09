// Created by Santosh G on 09/06/24.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:real_estate_app/model/place_model.dart';

abstract class AppUtils {
  static String getRandomAddress() {
    final List<String> address = [
      "Elmwood Ave., 10",
      "Pinecrest Dr., 48",
      "Meadowbrook Ln., 67",
      "Cedar St., 15",
      "Birchwood Ave., 22",
      "Oakridge Blvd., 33",
      "Maple St., 50",
      "Willow Dr., 19",
      "Highland Rd., 85",
      "Aspen St., 11",
      "Laurel Ln., 42",
      "Chestnut Ave., 24",
      "Sycamore St., 60",
      "Redwood Dr., 30",
      "Poplar Blvd., 17"
    ];
    final int index = Random().nextInt(address.length);
    return address.elementAt(index);
  }

  static List<PlaceModel> getRandomPlaces() {
    final Random random = Random();
    return List.generate(
      5,
      (index) => PlaceModel(
        price: "₹ ${random.nextInt(200)} million",
        infrastructure: "Infra",
        withoutAnyLayer: random.nextBool(),
        cosyAreas: random.nextBool(),
        offset: Offset(
          random.nextDouble(),
          random.nextDouble(),
        )
      ),
    );
  }
}
