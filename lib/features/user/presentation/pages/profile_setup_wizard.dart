import 'package:flutter/material.dart';

class ProfileSetupWizard extends StatefulWidget {
  const ProfileSetupWizard({super.key});

  @override
  State<ProfileSetupWizard> createState() => _ProfileSetupWizardState();
}

class _ProfileSetupWizardState extends State<ProfileSetupWizard> {
  int _currentStep = 0;
  List<Widget> steps = List.generate(
    5,
    (index) => Center(child: Text("Step ${index + 1}")),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Text("Step $_currentStep of 5")]));
  }
}
