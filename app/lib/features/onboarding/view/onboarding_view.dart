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
      backgroundColor: const Color(0xFF2A2A2A),
      body: Stack(
        children: [
          // PageView with onboarding screens
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemCount: controller.onboardingData.length,
            itemBuilder: (context, index) {
              return OnboardingScreenWidget(
                onboardingData: controller.onboardingData[index],
              );
            },
          ),

          // Bottom navigation section
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: const Center(child: OnboardingButton()),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: controller.skipOnboarding,
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
