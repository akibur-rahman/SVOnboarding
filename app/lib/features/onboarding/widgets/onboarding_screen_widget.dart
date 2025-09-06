import 'package:flutter/material.dart';

class OnboardingScreenWidget extends StatelessWidget {
  const OnboardingScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(child: Text('Onboarding Screen')),
    );
  }
}
