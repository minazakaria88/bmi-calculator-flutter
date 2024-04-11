import 'package:flutter/material.dart';

class HeightItem extends StatelessWidget {
  const HeightItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          5,
              (index) => Container(
            color: index == 2 ? Colors.blue : Colors.grey,
            width: 1,
            height: index == 2 ? 45 : 30,
          ),
        ),
      ),
    );
  }
}