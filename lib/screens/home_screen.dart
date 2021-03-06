import 'package:favorite_foods/widgets/dish_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:favorite_foods/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Favorite Dishes',
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
                image: AssetImage('assets/food.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                'Dishes List',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: dishes.length,
            itemBuilder: (_, int index) {
              return Column(
                children: [
                  DishButton(
                    dish: dishes[index],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
