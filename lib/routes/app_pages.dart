
import 'package:dating_app/presentation/pages/home_page.dart';
import 'package:dating_app/presentation/pages/login_page.dart';
import 'package:dating_app/presentation/widgets/screen_wrapper_page.dart';
import 'package:dating_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AppPages {
  static final routes = GoRouter(routes: [
   GoRoute(
    path: Routes.LOGIN_ROUTE.path,
    name: Routes.LOGIN_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),
   GoRoute(
    path: Routes.NO_ACCOUNT_ROUTE.path,
    name: Routes.NO_ACCOUNT_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),
   GoRoute(
    path: Routes.REGISTRATION_PROCESS_ROUTE.path,
    name: Routes.REGISTRATION_PROCESS_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),
   GoRoute(
    path: Routes.REGISTRATION_AGREEMENT_ROUTE.path,
    name: Routes.REGISTRATION_AGREEMENT_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),
   GoRoute(
    path: Routes.NOTIFICATIONS_ROUTE.path,
    name: Routes.NOTIFICATIONS_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),
   GoRoute(
    path: Routes.CHAT_ROUTE.path,
    name: Routes.CHAT_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),

   ShellRoute(
    builder: (context, state, child) => ScreenWrapperPage(child: child),
    routes: [
     GoRoute(
    path: Routes.DISCOVER_ROUTE.path,
    name: Routes.DISCOVER_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),
     GoRoute(
    path: Routes.SEARCH_ROUTE.path,
    name: Routes.SEARCH_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),
     GoRoute(
    path: Routes.PROFILE_ROUTE.path,
    name: Routes.PROFILE_ROUTE.name,
    pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
    ),
   ])
   
  ]
  );
}