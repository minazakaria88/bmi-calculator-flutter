import 'package:bmi/models/person_model.dart';
import 'package:bmi/models/result_model.dart';
import 'package:bmi/widgets/bmi_calculate.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  const BMIResult({super.key, required this.model, required this.resultModel});
 final PersonModel model;
 final ResultModel resultModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Result',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            const Center(
              child: Text(
                'your BMI is ',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        '${resultModel.result.roundToDouble()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'kg/m2 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

             Center(
              child: Text(
                '(${resultModel.status})',
                style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          model.isMale ? Icons.male:Icons.female,
                          size: 30,
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'gender',
                          style: TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    ColumnItem(model: model.age, text: 'age',),
                    ColumnItem(model: model.height, text: 'Height',),
                    ColumnItem(model: model.weight, text: 'Weight',),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                child: RichText(
                  text: TextSpan(
                    style:const TextStyle(
                      height: 2
                    ),
                    children: [
                      const TextSpan(
                        text: 'A BMI of  ',
                          style: TextStyle(color: Colors.black,fontSize: 18)
                      ),
                      TextSpan(
                        text: resultModel.range,
                        style: const TextStyle(color: Colors.blue,fontSize: 18)
                      ),
                      const TextSpan(
                        text: ' indicates that your weight is in the ',
                          style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                      TextSpan(
                          text: resultModel.status,
                          style: const TextStyle(color: Colors.blue,fontSize: 18)
                      ),
                      const TextSpan(
                        text: ' for person in your height',
                        style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ],
                  ),

                )
              ),
            ),
            const Spacer(),
            BMICalculate(onPressed: (){
              Navigator.pop(context);
            }, text: 'TRY AGAIN')

          ],
        ),
      ),
    );
  }
}

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    super.key,
    required this.model, required this.text,
  });

  final int model;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$model',
          style: const TextStyle(color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold),
        ),
         const SizedBox(
           height: 5,
         ),
         Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
