import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:svonboarding/features/onboarding/data/onboarding_data.dart';
import 'package:svonboarding/features/onboarding/model/onboarding_model.dart';
import 'package:svonboarding/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentPage = 0.obs;
  final GetStorage _storage = GetStorage();

  static const String _onboardingKey = 'onboarding_completed';

  List<OnboardingModel> get pages => OnboardingData.pages;

  bool get isLastPage => currentPage.value == pages.length - 1;
  bool get isFirstPage => currentPage.value == 0;

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(_onPageChanged);
  }

  @override
  void onClose() {
    pageController.removeListener(_onPageChanged);
    pageController.dispose();
    super.onClose();
  }

  void _onPageChanged() {
    if (pageController.page != null) {
      currentPage.value = pageController.page!.round();
    }
  }

  void nextPage() {
    if (isLastPage) {
      _completeOnboarding();
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (!isFirstPage) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipOnboarding() {
    _completeOnboarding();
  }

  void _completeOnboarding() {
    _storage.write(_onboardingKey, true);
    Get.offAllNamed(AppRoutes.home);
  }

  static bool isOnboardingCompleted() {
    final GetStorage storage = GetStorage();
    return storage.read(_onboardingKey) ?? false;
  }
}
