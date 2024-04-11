import 'package:flutter/material.dart';

class AgeButton extends StatelessWidget {
  const AgeButton({
    super.key, required this.iconData, required this.onPressed,
  });
  final IconData iconData;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child:  Icon(
           iconData,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}