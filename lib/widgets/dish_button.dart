import 'package:favorite_foods/screens/dish_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:favorite_foods/models/dish.dart';

class DishButton extends StatelessWidget {
  final Dish dish;

  const DishButton({required this.dish});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DishScreen(dish: dish),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        height: 70,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            dish.dishName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
