import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_theme_localization/localization/app_localization.dart';
import 'package:responsive_theme_localization/screens/home_screen/home_screen.dart';
import 'package:responsive_theme_localization/services/shared_preference_service.dart';
import 'package:responsive_theme_localization/utils/app_dependency_binder.dart';
import 'package:responsive_theme_localization/theme/app_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(430, 932),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        fallbackLocale: const Locale('en', 'US'),
        initialBinding: AppDependencyBinder(),
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const HomeScreen(),
      ),
    );
  }
}