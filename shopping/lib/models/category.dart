import 'package:flutter/material.dart';

enum Categories {
  vegetable,
  fruit,
  meat,
  dairy,
  carb,
  sweet,
  spice,
  convenience,
  hygiene,
  other,
}

class Category {
  const Category(this.title, this.color);

  final String title;
  final Color color;
}
