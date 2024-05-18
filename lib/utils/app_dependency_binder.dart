import 'package:get/get.dart';
import 'package:responsive_theme_localization/screens/home_screen/controller/language_controller.dart';
import 'package:responsive_theme_localization/screens/home_screen/controller/theme_controller.dart';

class AppDependencyBinder extends Bindings{
  @override
  void dependencies() {
   Get.put(ThemeController());
   Get.put(LanguageController());
  }

}