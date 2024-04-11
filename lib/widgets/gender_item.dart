import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({
    super.key, required this.iconData, required this.text, required this.isSelected,
  });
  final IconData iconData;
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/2,
      child: Container(
        decoration:  BoxDecoration(
          color: isSelected ? Colors.blue.withOpacity(0.2) : Colors.brown.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected? Colors.blue: Colors.brown.withOpacity(0.4),
            width: isSelected? 2:0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 50,
              color: isSelected? Colors.blue:Colors.brown.withOpacity(0.8),
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black,fontSize: 19),
            ),
          ],
        ),
      ),
    );
  }
}