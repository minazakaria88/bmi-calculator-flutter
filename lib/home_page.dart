import 'package:bmi/bmi_result.dart';
import 'package:bmi/models/person_model.dart';
import 'package:bmi/models/result_model.dart';
import 'package:bmi/shared.dart';
import 'package:bmi/widgets/age_category.dart';
import 'package:bmi/widgets/bmi_calculate.dart';
import 'package:bmi/widgets/gender_item.dart';
import 'package:bmi/widgets/height_category.dart';
import 'package:bmi/widgets/weight_category.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PersonModel personModel =
      PersonModel(height: 170, weight: 50, age: 22, isMale: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Gender',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          personModel.isMale = true;
                        });
                      },
                      child: GenderItem(
                        iconData: Icons.male,
                        text: 'male',
                        isSelected: personModel.isMale,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          personModel.isMale = false;
                        });
                      },
                      child: GenderItem(
                        iconData: Icons.female,
                        text: 'female',
                        isSelected: personModel.isMale ? false : true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            HeightCategory(
                height: personModel.height,
                function: (height) {
                  setState(() {
                    personModel.height = height;
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AgeCategory(
                      age: personModel.age,
                      functionADD: () {
                        setState(() {
                          personModel.age++;
                        });
                      },
                      functionMIN: () {
                        if (personModel.age != 0) {
                          setState(() {
                            personModel.age--;
                          });
                        }
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: WeightCategory(
                      function: (weight) {
                        setState(() {
                          personModel.weight = weight;
                        });
                      },
                      weight: personModel.weight,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            BMICalculate(
              text:  'CALCULATE BMI ',
              onPressed: () {
                double result=(personModel.weight)/((personModel.height/100)*(personModel.height/100));
                ResultModel resultModel=ResultModel(result: result);
                resultModel.assignStatus();
                goto(
                  context: context,
                  screen:  BMIResult(model: personModel, resultModel: resultModel,),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}
