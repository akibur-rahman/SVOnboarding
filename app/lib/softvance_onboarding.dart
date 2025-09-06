import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svonboarding/features/onboarding/controller/onboarding_controller.dart';
import 'package:svonboarding/routes/app_pages.dart';
import 'package:svonboarding/routes/app_routes.dart';

class SoftVenceOnboarding extends StatelessWidget {
  const SoftVenceOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SoftVence Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
        fontFamily: 'SF Pro Display',
      ),
      initialRoute: OnboardingController.isOnboardingCompleted()
          ? AppRoutes.home
          : AppRoutes.onboarding,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
