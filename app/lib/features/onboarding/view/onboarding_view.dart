import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svonboarding/features/onboarding/controller/onboarding_controller.dart';
import 'package:svonboarding/features/onboarding/widgets/onboarding_button.dart';
import 'package:svonboarding/features/onboarding/widgets/onboarding_screen_widget.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Center(child: OnboardingScreenWidget()),
              );
            },
          ),
          Positioned(
            bottom: 80,
            left: 18,
            right: 18,
            child: const OnboardingButton(),
          ),
        ],
      ),
    );
  }
}
