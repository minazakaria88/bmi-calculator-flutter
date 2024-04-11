import 'package:flutter/material.dart';

class BMICalculate extends StatelessWidget {
  const BMICalculate({
    super.key, required this.onPressed, required this.text,
  });
  final Function onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: MaterialButton(
          onPressed: () {
          onPressed();
          },
          child:  Text(
           text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}