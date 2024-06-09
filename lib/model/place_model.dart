// Created by Santosh G on 10/06/24.

import 'dart:ui';

class PlaceModel {
  PlaceModel({
    required this.price,
    required this.infrastructure,
    required this.withoutAnyLayer,
    required this.cosyAreas,
    required this.offset,
  });

  final bool cosyAreas;
  final String price;
  final String infrastructure;
  final bool withoutAnyLayer;
  final Offset offset;
}
