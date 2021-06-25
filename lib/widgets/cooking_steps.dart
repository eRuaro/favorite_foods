import 'package:flutter/material.dart';

class CookingSteps extends StatelessWidget {
  final String step;
  const CookingSteps({required this.step});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 70,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              step,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
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
