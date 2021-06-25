import 'package:favorite_foods/screens/dish_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DishButton extends StatelessWidget {
  const DishButton({
    Key? key,
  }) : super(key: key);

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
        height: 70,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Mango Shake',
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
