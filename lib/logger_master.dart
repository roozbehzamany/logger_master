library logger_master;

import 'package:flutter/foundation.dart';


extension ObjectLogger on Object {
  static const _reset = '\x1B[0m';
  static const _green = '\x1B[92m';
  static const _blue = '\x1B[96m';
  static const _yellow = '\x1B[93m';
  static const _red = '\x1B[91m';

  /// Logs info-level with optional tag. Clickable file:line in IDE.
  void logInfo([String? tag]) => _log(tag, _green);

  /// Logs debug-level with optional tag.
  void logDebug([String? tag]) => _log(tag, _blue);

  /// Logs warning-level with optional tag.
  void logWarning([String? tag]) => _log(tag, _yellow);

  /// Logs error-level with optional tag.
  void logError([String? tag]) => _log(tag, _red);

  void _log(String? tag, String color) {
    final t = tag ?? runtimeType.toString();
    // one extra frame up so caller location نمایش داده بشه
    final frame = StackTrace.current.toString().split('\n')[2];
    final location = _parseFrame(frame);
    final clickablePath = location != 'unknown' ? 'file://$location' : 'unknown';

    if (kDebugMode) {
      // رنگ فقط در ترمینال/IDE ساپورت می‌شود
      // مسیر file:// برای کلیک در Android Studio / VS Code
      debugPrint('$color[$t] $this [$clickablePath]$_reset');
    }
  }

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