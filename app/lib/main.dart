import 'package:flutter/material.dart';
import 'package:svonboarding/softvance_onboarding.dart';
import 'package:svonboarding/core/di/injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InjectionContainer().init();
  runApp(const SoftVenceOnboarding());
}
