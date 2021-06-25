import 'package:flutter/material.dart';

class IngredientsButton extends StatelessWidget {
  final String ingredient;

  const IngredientsButton({required this.ingredient});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 70,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.teal,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              ingredient,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
