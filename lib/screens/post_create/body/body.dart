import 'package:apart_rent/constants.dart';
import 'package:apart_rent/screens/post_create/body/basic_information.dart';
import 'package:apart_rent/screens/post_create/body/describe_information.dart';
import 'package:apart_rent/screens/post_create/body/owner_information.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  _Body createState() => _Body();
}

class _Body extends State<Body> {
  int _activeStepIndex = 0;

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('Account'),
          content: const BasicInformation(),
        ),
        Step(
          state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 1,
          title: const Text('Address'),
          content: const DescribeInformation(),
        ),
        Step(
          state: StepState.complete,
          isActive: _activeStepIndex >= 2,
          title: const Text('Confirm'),
          content: const OwnerInformation(),
        )
      ];

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      currentStep: _activeStepIndex,
      steps: stepList(),
      onStepContinue: () {
        if (_activeStepIndex < (stepList().length - 1)) {
          setState(() {
            _activeStepIndex += 1;
          });
        } else {
          print('Submited');
        }
      },
      onStepCancel: () {
        if (_activeStepIndex == 0) {
          return;
        }
        setState(() {
          _activeStepIndex -= 1;
        });
      },
      onStepTapped: (int index) {
        setState(() {
          _activeStepIndex = index;
        });
      },
      controlsBuilder: (context, details) {
        final isLastStep = _activeStepIndex == stepList().length - 1;
        return Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: details.onStepContinue,
                  child:
                      (isLastStep) ? const Text('Submit') : const Text('Next'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              if (_activeStepIndex > 0)
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      primary: Colors.white,
                    ),
                    onPressed: details.onStepCancel,
                    child: const Text('Back'),
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
