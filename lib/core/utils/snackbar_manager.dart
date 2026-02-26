import 'package:flutter/material.dart';

// Global Key defined for MaterialApp(scaffoldMessengerKey: snackbarKey)
final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();

class SnackbarManager {
  
  /// --- Success Snackbar ---
  static void success(String message) {
    _show(
      message,
      icon: Icons.check_circle_rounded,
      isError: false,
      isInfo: false,
    );
  }

  /// --- Error Snackbar ---
  static void error(String message) {
    _show(
      message,
      icon: Icons.error_rounded,
      isError: true,
      isInfo: false,
    );
  }

  /// --- Info Snackbar ---
  static void info(String message) {
    _show(
      message,
      icon: Icons.info_rounded,
      isError: false,
      isInfo: true,
    );
  }

  /// Private helper to handle the logic and styling
  static void _show(
    String message, {
    required IconData icon,
    required bool isError,
    required bool isInfo,
  }) {
    final context = snackbarKey.currentContext;
    if (context == null) return;

    final colorScheme = Theme.of(context).colorScheme;

    // 1. Determine Background Color based on Theme
    // Error uses the standard 'error' color
    // Success uses 'primary' (common for brand success)
    // Info uses 'secondary' or 'tertiary'
    final Color bgColor = isError 
        ? colorScheme.error 
        : (isInfo ? colorScheme.secondary : colorScheme.primary);

    // 2. Determine Text/Icon Color for contrast
    final Color contentColor = isError 
        ? colorScheme.onError 
        : (isInfo ? colorScheme.onSecondary : colorScheme.onPrimary);

    // 3. Clear existing queue for instant feedback
    snackbarKey.currentState?.removeCurrentSnackBar();

    snackbarKey.currentState?.showSnackBar(
      SnackBar(
        backgroundColor: bgColor,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 3),
        content: Row(
          children: [
            Icon(icon, color: contentColor, size: 22),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  color: contentColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}