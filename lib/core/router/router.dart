import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrivision/core/logger/app_logger.dart';
import 'package:nutrivision/features/auth/presentation/pages/auth_page.dart';
import 'package:nutrivision/features/auth/presentation/viewmodel/auth_notifier.dart';
import 'package:nutrivision/features/auth/presentation/viewmodel/state/auth_state.dart';
import 'package:nutrivision/features/user/presentation/pages/profile_setup_wizard.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final authRouts = [AppRouts.authPage, AppRouts.splashScreen];

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  appLogger.d("router rebuild ${authState.runtimeType}");
  return GoRouter(
    initialLocation: AppRouts.authPage,
    navigatorKey: navigatorKey,
    redirect: (BuildContext context, GoRouterState state) {
      final currentPath = state.uri.path;

      appLogger.i(
        "redirecting current path $currentPath ${authState.runtimeType}",
      );
      switch (authState) {
        case Initial():
          appLogger.i("initial");

          if (currentPath != AppRouts.splashScreen) {
            appLogger.i(AppRouts.splashScreen);

            return AppRouts.splashScreen;
          }

          break;
        case Authenticated():
          appLogger.i("authincated");
          if (authRouts.contains(currentPath)) {
            appLogger.i(AppRouts.home);

            return AppRouts.profileSetUpWizard;
          }

          break;
        case Unauthenticated():
          appLogger.i("unauthincated");

          if (!authRouts.contains(currentPath)) {
            appLogger.i(AppRouts.authPage);

            return AppRouts.authPage;
          }
      }
      appLogger.i("default null");

      return null;
    },
    routes: [
      GoRoute(path: AppRouts.authPage, builder: (context, state) => AuthPage()),
      GoRoute(
        path: AppRouts.splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
       GoRoute(
        path: AppRouts.profileSetUpWizard,
        builder: (context, state) => ProfileSetupWizard(),
      ),
      GoRoute(path: AppRouts.home, builder: (context, state) => Home()),
    ],
  );
});

class AppRouts {
  AppRouts._();
  static const String authPage = "/auth";
  static const String home = "/home";
  static const String profileSetUpWizard = "/profile_setup";
  static const String splashScreen = "/";
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("NutriVision"),
            Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return OutlinedButton(
              onPressed: () {
                ref.read(authProvider.notifier).logout();
              },
              child: Text("logout"),
            );
          },
        ),
      ),
    );
  }
}
