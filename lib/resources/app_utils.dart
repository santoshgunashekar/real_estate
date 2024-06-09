// Created by Santosh G on 09/06/24.

import 'dart:math';

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
}
