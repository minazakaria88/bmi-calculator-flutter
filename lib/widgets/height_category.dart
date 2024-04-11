import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import 'height_item.dart';

class HeightCategory extends StatelessWidget {
  const HeightCategory({super.key, required this.height, required this.function});
  final int height;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Height (cm)',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.brown.withOpacity(0.4),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                NumberPicker(
                  minValue: 100,
                  maxValue: 230,
                  value: height,
                  axis: Axis.horizontal,
                  selectedTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  onChanged: (newHeight) {
                    function(newHeight);
                  },
                ),
                const HeightItem(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
