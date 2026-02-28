import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/core/logger/app_logger.dart';
import 'package:nutrivision/core/utils/snackbar_manager.dart' show snackbarKey;
import 'package:nutrivision/core/widgets/global_error_widget.dart';
import 'package:nutrivision/features/user/presentation/pages/profile_setup_wizard.dart';
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
      const flavor = String.fromEnvironment("FLAVOR", defaultValue: 'dev');

      if (flavor == "dev") {
        
        await connectToEmulators();
      }
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

class TestApp extends ConsumerWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = MaterialTheme(createTextTheme(context));

    return MaterialApp(
      home: ProfileSetupWizard(),
      theme: theme.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
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

Future<void> connectToEmulators() async {
  // Uses --dart-define=EMULATOR_IP=192.168.1.5 or defaults to localhost
  const String host = String.fromEnvironment(
    'EMULATOR_IP',
    defaultValue: '127.0.0.1',
  );
  const int authPort = 9099;
  const int firestorePort = 8080;
    appLogger.i("authport $authPort firestoreport $firestorePort host $host");

  try {
    await FirebaseAuth.instance.useAuthEmulator(host, authPort,automaticHostMapping: false);
    FirebaseFirestore.instance.useFirestoreEmulator(host, firestorePort,automaticHostMapping: false);
    appLogger.i("Emulator bound to: ${FirebaseAuth.instance.app.options.projectId}");

    appLogger.i("Successfully connected to Firebase Emulators at $host");
  } catch (e) {
    appLogger.e("Failed to connect to emulators: $e");
  }
}
