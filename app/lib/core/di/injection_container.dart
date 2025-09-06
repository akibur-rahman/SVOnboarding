import 'package:get_storage/get_storage.dart';

class InjectionContainer {
  static final InjectionContainer _instance = InjectionContainer._internal();
  factory InjectionContainer() => _instance;
  InjectionContainer._internal();

  Future<void> init() async {
    await GetStorage.init();
  }
}
