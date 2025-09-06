import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svonboarding/core/theme/theme.dart';
import 'package:svonboarding/routes/app_pages.dart';
import 'package:svonboarding/routes/app_routes.dart';

class SoftVenceOnboarding extends StatelessWidget {
  const SoftVenceOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SoftVence Onboarding',
      theme: AppTheme.theme,
      initialRoute: AppRoutes.onboarding,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
