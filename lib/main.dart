import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/core/logger/app_logger.dart';
import 'package:nutrivision/core/utils/snackbar_manager.dart' show snackbarKey;
import 'package:nutrivision/core/widgets/global_error_widget.dart';
import 'package:nutrivision/firebase_options.dart';
import 'package:nutrivision/theme.dart';
import 'package:nutrivision/util.dart';
import 'package:nutrivision/core/router/router.dart';

void main() async {
 
  runZonedGuarded(
    () async {
       WidgetsFlutterBinding.ensureInitialized();
  // 2. Set up the ErrorBuilder BEFORE anything else starts
      ErrorWidget.builder = (FlutterErrorDetails details) {
        // Return a MaterialApp here to ensure a valid rendering context
        // for the GlobalErrorWidget.
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GlobalErrorWidget(errorDetails: details),
        );
      };
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      runApp(ProviderScope(child: MyApp()));
    },
    (error, st) {
      appLogger.e("uncaught asyncronous error caught in runZonedGuarded ");
      FlutterError.dumpErrorToConsole(
        FlutterErrorDetails(exception: error, stack: st),
      );
    },
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = MaterialTheme(createTextTheme(context));

    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      scaffoldMessengerKey: snackbarKey,
      theme: theme.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
