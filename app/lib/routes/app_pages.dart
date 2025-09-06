import 'package:get/get.dart';
import 'package:svonboarding/features/home/binding/home_binding.dart';
import 'package:svonboarding/features/home/view/home_view.dart';
import 'package:svonboarding/features/onboarding/binding/onboarding_binding.dart';
import 'package:svonboarding/features/onboarding/view/onboarding_view.dart';
import 'package:svonboarding/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
