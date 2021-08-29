import 'package:flutter/material.dart';

class Furnituredef {
  final String title;
  final String description;
  final String id;
  final String price;
  final String iconImage;
  final String ratings;
  final bool isFav;
  final List<String> categories;

  Furnituredef({
    required this.title,
    required this.description,
    required this.id,
    required this.price,
    required this.iconImage,
    required this.ratings,
    required this.isFav,
    required this.categories,
  });

  // get length => null;
}
