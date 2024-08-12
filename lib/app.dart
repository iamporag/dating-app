import 'package:dating_app/blocs/bloc/nav_bloc.dart';
import 'package:dating_app/blocs/carousel/carousel_bloc.dart';
import 'package:dating_app/routes/app_pages.dart';
import 'package:dating_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatingApp extends StatelessWidget {
  const DatingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> NavBloc()),
        BlocProvider(create: (context)=> CarouselBloc()),
      ],
      child: ScreenUtilInit(
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
      ),
    );
  }
}
