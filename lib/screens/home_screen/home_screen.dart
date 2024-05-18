import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_theme_localization/screens/home_screen/controller/language_controller.dart';
import 'package:responsive_theme_localization/utils/app_urls.dart';

import 'controller/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 300.h,
                  width: 200.w,
                  child: GetBuilder<ThemeController>(builder: (controller) {
                    return Lottie.asset(
                        controller.isDark ? AppUrls.moonGif : AppUrls.sunGif);
                  }),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('place'.tr,
                          style: Get.textTheme.titleLarge!
                              .copyWith(fontSize: 40.sp)),
                      GetBuilder<ThemeController>(builder: (controller) {
                        return Text(
                            controller.isDark ? 'nightTime'.tr : 'dayTime'.tr,
                            style: Get.textTheme.bodyMedium);
                      }),
                    ],
                  ),
                )
              ],
            ),
            Gap(40.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 220.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Theme.of(context).colorScheme.primaryContainer),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GetBuilder<ThemeController>(builder: (controller) {
                          return Text(controller.isDark ? 'night'.tr : 'day'.tr,
                              style: Get.textTheme.titleLarge);
                        }),
                        Gap(16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.shield_moon,
                              size: 50.sp,
                            ),
                            GetBuilder<ThemeController>(builder: (controller) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CupertinoSwitch(
                                      value: controller.isDark,
                                      onChanged: (newValue) =>
                                          controller.changeTheme()),
                                ],
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(16.w),
                Expanded(
                  child: Container(
                    height: 220.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Theme.of(context).colorScheme.primaryContainer),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('language'.tr, style: Get.textTheme.titleLarge),
                        Gap(16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.translate, size: 50.sp),
                            GetBuilder<LanguageController>(
                                builder: (controller) {
                              return CupertinoSwitch(
                                  value: controller.isEnglish,
                                  onChanged: (newValue) =>
                                      controller.changeLanguage());
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Gap(32.h),
            Container(
                height: 180.h,
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Text('status'.tr,
                    style: Get.textTheme.bodyLarge,
                    textAlign: TextAlign.center)),
          ],
        ),
      ),
    );
  }
}
