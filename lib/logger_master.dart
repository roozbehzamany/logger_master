library logger_master;

import 'package:flutter/foundation.dart';

/// Extension on Object to provide custom logging functionality
extension ObjectLogger on Object {
  // ANSI color codes for terminal logs
  static const _reset = '\x1B[0m';
  static const _green = '\x1B[92m'; // Info
  static const _blue = '\x1B[96m'; // Debug
  static const _yellow = '\x1B[93m'; // Warning
  static const _red = '\x1B[91m'; // Error

  /// Logs info-level message with optional tag.
  /// Displays clickable file:line reference in IDE.
  void logInfo([String? tag]) => _log(tag, _green);

  /// Logs debug-level message with optional tag.
  void logDebug([String? tag]) => _log(tag, _blue);

  /// Logs warning-level message with optional tag.
  void logWarning([String? tag]) => _log(tag, _yellow);

  /// Logs error-level message with optional tag.
  void logError([String? tag]) => _log(tag, _red);

  /// Internal logging function with color formatting
  void _log(String? tag, String color) {
    // Use provided tag or fallback to runtime type
    final t = tag ?? runtimeType.toString();

    // Capture the caller frame (skip 2 frames to get correct location)
    final frame = StackTrace.current.toString().split('\n')[2];

    // Extract file path and line number
    final location = _parseFrame(frame);

    // Format clickable path for IDEs (VS Code / Android Studio)
    final clickablePath = location != 'unknown' ? 'file://$location' : 'unknown';

    if (kDebugMode) {
      // Only log in debug mode
      // Colors are supported only in terminals/IDE consoles
      debugPrint('$color[$t] $this [$clickablePath]$_reset');
    }
  }

  /// Extracts file and line number from stack trace frame
  String _parseFrame(String frame) {
    final regex = RegExp(r'\((.+?):(\d+):(\d+)\)');
    final match = regex.firstMatch(frame);

    if (match != null) {
      final file = match.group(1)!;
      final line = match.group(2);
      return '$file:$line';
    }

    return 'unknown';
  }
}
