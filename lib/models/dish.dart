import 'package:flutter/material.dart';

class Dish {
  final String dishName;
  final String imageFile;
  final List<String> ingredients;
  final List<String> cookingSteps;

  const Dish({required this.dishName, required this.imageFile, required this.ingredients, required this.cookingSteps});
}