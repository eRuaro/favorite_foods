import 'package:favorite_foods/widgets/cooking_steps.dart';
import 'package:favorite_foods/widgets/ingredients_button.dart';
import 'package:flutter/material.dart';
import 'package:favorite_foods/models/dish.dart';

class DishScreen extends StatelessWidget {
  final Dish dish;

  const DishScreen({required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          dish.dishName,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(
                width: 470,
                image: AssetImage('assets/${dish.imageFile}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: dish.ingredients.length,
            itemBuilder: (context, int index) {
              return IngredientsButton(
                ingredient: dish.ingredients[index],
              );
            },
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              'Cooking Steps',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: dish.cookingSteps.length,
            itemBuilder: (context, int index) {
              return CookingSteps(
                step: dish.cookingSteps[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
