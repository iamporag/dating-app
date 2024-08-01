import 'package:dating_app/routes/app_pages.dart';
import 'package:dating_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatingApp extends StatelessWidget {
  const DatingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          themeMode: ThemeMode.dark,
          theme: Styles.APP_THEME_LIGHT,
          darkTheme: Styles.APP_THEME_DARK,
          routerConfig: AppPages.routes,
        );
      },
    );
  }
}
