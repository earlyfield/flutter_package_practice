import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  final _maxSteps = 3;
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.stepper.name),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text('Step 1'),
              content: Text('Information for step 1'),
            ),
            Step(
              title: Text('Step 1'),
              content: Text('Information for step 2'),
            ),
            Step(
              title: Text('Step 3'),
              content: Text('Information for step 3'),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          onStepContinue: () {
            if (_currentStep + 1 < _maxSteps) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
          currentStep: _currentStep,
        ),
      ),
    );
  }
}
