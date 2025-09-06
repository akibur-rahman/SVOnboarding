import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svonboarding/features/onboarding/controller/onboarding_controller.dart';
import 'package:svonboarding/features/onboarding/widgets/next_button_widget.dart';
import 'package:svonboarding/features/onboarding/widgets/onboarding_page_widget.dart';
import 'package:svonboarding/features/onboarding/widgets/page_indicator_widget.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: controller.pages.length,
              itemBuilder: (context, index) {
                return OnboardingPageWidget(
                  model: controller.pages[index],
                  onSkip: controller.skipOnboarding,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              children: [
                Obx(
                  () => PageIndicatorWidget(
                    currentPage: controller.currentPage.value,
                    totalPages: controller.pages.length,
                  ),
                ),
                const SizedBox(height: 24),
                Obx(
                  () => NextButtonWidget(
                    onPressed: controller.nextPage,
                    isLastPage: controller.isLastPage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
