import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class WeightCategory extends StatelessWidget {
  const WeightCategory({super.key, required this.weight, required this.function});
  final int weight;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Weight(kg)',
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
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const Positioned(
                bottom: 40,
                child: RotatedBox(
                  quarterTurns: 45,
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NumberPicker(
                  minValue: 40,
                  maxValue: 200,
                  value: weight,
                  axis: Axis.horizontal,
                  itemWidth: 45,
                  selectedTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  onChanged: (newWeight) {
                     function(newWeight);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
