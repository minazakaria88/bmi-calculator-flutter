import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String text =
      'ishgoidsrnf sdsiodhfoisnbfs oidhgoiergter liknv dsfoidfd vdiovb dviodf veoivbx vierorov xfvber fgdfoiibnger vvo xic ew4fb n v';
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('description'),
                      IconButton(
                        icon:  Icon(
                          isExpanded? Icons.arrow_drop_up:Icons.arrow_drop_down,
                          size: 50,
                        ),
                        onPressed: (){
                          setState(() {
                            isExpanded=!isExpanded;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: isExpanded ? null:0,
                    child: Text(text),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
