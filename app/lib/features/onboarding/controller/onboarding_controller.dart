import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svonboarding/core/constants/onboarding_screen_data.dart';
import 'package:svonboarding/models/onboarding_model.dart';
import 'package:svonboarding/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentPage = 0.obs;

  final List<OnboardingModel> onboardingData =
      OnboardingScreenData.onboardingScreenData;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void nextPage() {
    if (currentPage.value < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(AppRoutes.home);
    }
  }

  void skipOnboarding() {
    Get.offAllNamed(AppRoutes.home);
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }
}
