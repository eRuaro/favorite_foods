import 'package:flutter/material.dart';
import 'package:favorite_foods/data/data.dart';
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
            fontSize: 18,
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
        ],
      ),
    );
  }
}
