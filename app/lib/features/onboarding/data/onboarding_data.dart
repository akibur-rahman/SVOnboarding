import 'package:svonboarding/features/onboarding/model/onboarding_model.dart';

class OnboardingData {
  static const List<OnboardingModel> pages = [
    OnboardingModel(
      gifPath: 'assets/gifs/gif1.gif',
      title: 'Sync with Nature\'s Rhythm',
      description:
          'Experience a peaceful transition into the evening with an alarm that aligns with the sunset.Your perfect reminder, always 15 minutes before sundown',
    ),
    OnboardingModel(
      gifPath: 'assets/gifs/gif2.gif',
      title: 'Smart Notifications',
      description:
          'Get intelligent reminders that adapt to your daily routine and preferences.Never miss important moments with personalized alerts',
    ),
    OnboardingModel(
      gifPath: 'assets/gifs/gif3.gif',
      title: 'Seamless Experience',
      description:
          'Enjoy a smooth and intuitive interface designed for your comfort.Everything you need, right at your fingertips',
    ),
  ];
}
