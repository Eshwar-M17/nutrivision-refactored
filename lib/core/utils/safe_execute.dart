
//   import 'package:nutrivision/core/result/result.dart';

// Future<Result<T>> safeExecute<T>(
//     Future<T> Function() operation, {
//     bool isAuthRequired = true,
//   }) async {
//     if (_isAuthNull && isAuthRequired) return Result<T>.error("Unauthorized");
//     try {
//       return Result<T>.ok(await operation());
//     } catch (e) {
//       appLogger.e(e.toString());
//       return Result<T>.error(e.toString());
//     }
//   }