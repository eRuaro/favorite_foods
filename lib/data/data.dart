import 'package:favorite_foods/models/dish.dart';

final _dish1 = Dish(
  dishName: 'Mango Shake',
  imageFile: 'assets/food.jpg',
  ingredients: [
    '2 Mango Fruit',
    '1 and 1/2 Cups of Milk',
    '1 and 1/2 tablespoons of sugar',
    '2 - 3 Ice Cubes'
  ],
  cookingSteps: [
    'Wash and Peel Mangoes into Small Pieces',
    'Transfer Mango Pieces to the Blender',
    'Add Milk, Sugar, and Ice Cubes to the Blender',
    'Blend Until Smooth and Creamy and there are no Mango Chunks in it',
    'Pour Blended Mango Shake to a Glass for Savoring',
  ],
);

final _dish2 = Dish(
  dishName: dishName,
  imageFile: imageFile,
  ingredients: ingredients,
  cookingSteps: cookingSteps,
);
