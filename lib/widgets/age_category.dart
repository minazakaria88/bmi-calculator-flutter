import 'package:flutter/material.dart';

import 'age_button.dart';

class AgeCategory extends StatelessWidget {
  const AgeCategory({super.key, required this.age, required this.functionADD, required this.functionMIN});
  final int age;
  final Function functionADD;
  final Function functionMIN;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Age',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AgeButton(
                iconData: Icons.remove,
                onPressed: () {
                  functionMIN();
                },
              ),
              Text(
                '$age',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AgeButton(
                iconData: Icons.add,
                onPressed: () {
                  functionADD();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
